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
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    mem[ceil32(return_data.size) + 132] = cd[4] / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
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
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    require address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = cd[4] / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[4] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _39 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_39] == bool(mem[_39])
    if block.timestamp > -61:
        revert with 'NH{q', 17
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, cd[4]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 132).length, mem[mem[64] + 196 len 32 * ('cd', 132).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _60 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _61 = mem[_60]
    require mem[_60] <= test266151307()
    require _60 + mem[_60] + 31 < _60 + return_data.size
    _62 = mem[_60 + mem[_60]]
    if mem[_60 + mem[_60]] > test266151307():
        revert with 'NH{q', 65
    if _60 + ceil32(return_data.size) + floor32(mem[_60 + mem[_60]]) + 1 > test266151307() or floor32(mem[_60 + mem[_60]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _60 + ceil32(return_data.size) + floor32(mem[_60 + mem[_60]]) + 1
    mem[_60 + ceil32(return_data.size)] = _62
    require _61 + (32 * _62) + 32 <= return_data.size
    idx = 0
    s = _60 + _61 + 32
    t = _60 + ceil32(return_data.size) + 32
    while idx < _62:
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
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _86 = mem[_85]
    require mem[_85] == mem[_85]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _90 = mem[_89]
    require mem[_89] == mem[_89]
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _86
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _86
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_93] == bool(mem[_93])
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _90
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _90
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_97] == bool(mem[_97])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _90
    mem[mem[64] + 100] = _86
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[164]))
    call address(cd[164]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor1, address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _90, _86, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_101] == mem[_101]
    require mem[_101 + 32] == mem[_101 + 32]
    require mem[_101 + 64] == mem[_101 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_107]
    require mem[_107] == mem[_107]
    mem[mem[64] + 4] = address(cd[228])
    mem[mem[64] + 36] = _108
    require ext_code.size(address(cd[196]))
    call address(cd[196]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[228]), _108
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == bool(mem[_111])
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_115]
    require mem[_115] == mem[_115]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _119 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _120 = mem[_119]
    require mem[_119] == mem[_119]
    require mem[_119 + 32] == mem[_119 + 32]
    require mem[_119 + 64] == mem[_119 + 92 len 4]
    require mem[_119 + 96] == mem[_119 + 124 len 4]
    mem[mem[64] + 4] = _108
    mem[mem[64] + 36] = _116
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(cd[228]))
    call address(cd[228]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _108, _116, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _126 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
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
    require mem[_130] == mem[_130]
    require mem[_130 + 32] == mem[_130 + 32]
    require mem[_130 + 64] == mem[_130 + 92 len 4]
    require mem[_130 + 96] == mem[_130 + 124 len 4]
    if mem[_130] < _120:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_130] - _120
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
    mem[_36] = _35
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
    mem[_108] = _107
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
    if not address(arg2):
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        mem[mem[64] + 228] = _107
        idx = 0
        s = _108 + 32
        t = mem[64] + 260
        while idx < _107:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _260 = mem[_180 + 96]
        mem[mem[64] + 196] = (32 * _107) + 160
        _262 = mem[_260]
        mem[mem[64] + (32 * _107) + 260] = mem[_260]
        idx = 0
        s = _260 + 32
        t = mem[64] + (32 * _107) + 292
        while idx < _262:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplitToAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, arg1, 0, 128, (32 * _107) + 160, _107, mem[mem[64] + 260 len (32 * _107) + (32 * _262) + 32]
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
    else:
        _183 = mem[64]
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        mem[mem[64] + 228] = _107
        idx = 0
        s = _108 + 32
        t = mem[64] + 260
        while idx < _107:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _259 = mem[_180 + 96]
        mem[mem[64] + 196] = (32 * _107) + 160
        _261 = mem[_259]
        mem[mem[64] + (32 * _107) + 260] = mem[_259]
        idx = 0
        s = _259 + 32
        t = mem[64] + (32 * _107) + 292
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
            args mem[mem[64] + 4 len _183 + (32 * _107) + (32 * _261) + -mem[64] + 288]
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
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    mem[ceil32(return_data.size) + 132] = cd[4] / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
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
    _37 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _38 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    require _37 + (32 * _38) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _37 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _38:
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
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = cd[4] / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[4] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _60 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_60] == bool(mem[_60])
    if block.timestamp > -61:
        revert with 'NH{q', 17
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, cd[4]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 132).length, mem[mem[64] + 196 len 32 * ('cd', 132).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _82 = mem[_81]
    require mem[_81] <= test266151307()
    require _81 + mem[_81] + 31 < _81 + return_data.size
    _83 = mem[_81 + mem[_81]]
    if mem[_81 + mem[_81]] > test266151307():
        revert with 'NH{q', 65
    if _81 + ceil32(return_data.size) + floor32(mem[_81 + mem[_81]]) + 1 > test266151307() or floor32(mem[_81 + mem[_81]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _81 + ceil32(return_data.size) + floor32(mem[_81 + mem[_81]]) + 1
    mem[_81 + ceil32(return_data.size)] = _83
    require _82 + (32 * _83) + 32 <= return_data.size
    idx = 0
    s = _81 + _82 + 32
    t = _81 + ceil32(return_data.size) + 32
    while idx < _83:
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
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _107 = mem[_106]
    require mem[_106] == mem[_106]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _111 = mem[_110]
    require mem[_110] == mem[_110]
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _107
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _107
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _114 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_114] == bool(mem[_114])
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _111
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _111
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_118] == bool(mem[_118])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _111
    mem[mem[64] + 100] = _107
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[164]))
    call address(cd[164]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor1, address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _111, _107, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_122] == mem[_122]
    require mem[_122 + 32] == mem[_122 + 32]
    require mem[_122 + 64] == mem[_122 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] == mem[_128]
    mem[mem[64] + 4] = address(cd[228])
    mem[mem[64] + 36] = _129
    require ext_code.size(address(cd[196]))
    call address(cd[196]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[228]), _129
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_132] == bool(mem[_132])
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _136 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _137 = mem[_136]
    require mem[_136] == mem[_136]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _140 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _141 = mem[_140]
    require mem[_140] == mem[_140]
    require mem[_140 + 32] == mem[_140 + 32]
    require mem[_140 + 64] == mem[_140 + 92 len 4]
    require mem[_140 + 96] == mem[_140 + 124 len 4]
    mem[mem[64] + 4] = _129
    mem[mem[64] + 36] = _137
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(cd[228]))
    call address(cd[228]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _129, _137, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _147 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_147] == mem[_147]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _151 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_151] == mem[_151]
    require mem[_151 + 32] == mem[_151 + 32]
    require mem[_151 + 64] == mem[_151 + 92 len 4]
    require mem[_151 + 96] == mem[_151 + 124 len 4]
    if mem[_151] < _141:
        revert with 'NH{q', 17
    if mem[_151] - _141 < cd[260]:
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
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _161 = mem[_160]
    require mem[_160] == mem[_160]
    if mem[_160] <= 0:
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
        _168 = mem[_165]
        require mem[_165] == mem[_165]
        if mem[_165] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _168
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _168
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_174] == bool(mem[_174])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _161
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _161
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_167] == bool(mem[_167])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _177 = mem[_175]
        require mem[_175] == mem[_175]
        if mem[_175] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _177
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _177
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_180] == bool(mem[_180])
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
    mem[ceil32(return_data.size) + 100] = address(('cd', 68)[0])
    mem[ceil32(return_data.size) + 132] = cd[4]
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
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
    _18 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _19 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    require _18 + (32 * _19) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _18 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _19:
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
        _98 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _100 = mem[_98]
        require mem[_98] == mem[_98]
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = _100
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), _100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_110] == bool(mem[_110])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _120 = mem[_117]
        require mem[_117] == mem[_117]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _128 = mem[_126]
        require mem[_126] == mem[_126]
        require mem[_126 + 32] == mem[_126 + 32]
        require mem[_126 + 64] == mem[_126 + 92 len 4]
        require mem[_126 + 96] == mem[_126 + 124 len 4]
        mem[mem[64] + 4] = _100
        mem[mem[64] + 36] = _120
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[132]))
        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _100, _120, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_145] == mem[_145]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _153 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_153] == mem[_153]
        require mem[_153 + 32] == mem[_153 + 32]
        require mem[_153 + 64] == mem[_153 + 92 len 4]
        require mem[_153 + 96] == mem[_153 + 124 len 4]
        if mem[_153] < _128:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_153] - _128
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
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _182 = mem[_181]
            require mem[_181] == mem[_181]
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
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 36] = _182
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[68] + 36)]), _182
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_199] == bool(mem[_199])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            _202 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _182
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
            mem[_202 + 100] = this.address
            mem[_202 + 132] = block.timestamp + 60
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _223 = mem[_222]
            require mem[_222] <= test266151307()
            require _222 + mem[_222] + 31 < _222 + return_data.size
            _224 = mem[_222 + mem[_222]]
            if mem[_222 + mem[_222]] > test266151307():
                revert with 'NH{q', 65
            if _222 + ceil32(return_data.size) + floor32(mem[_222 + mem[_222]]) + 1 > test266151307() or floor32(mem[_222 + mem[_222]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _222 + ceil32(return_data.size) + floor32(mem[_222 + mem[_222]]) + 1
            mem[_222 + ceil32(return_data.size)] = _224
            require _223 + (32 * _224) + 32 <= return_data.size
            s = 0
            t = _222 + _223 + 32
            u = _222 + ceil32(return_data.size) + 32
            while s < _224:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _224 == -1:
                revert with 'NH{q', 17
            s = _224 + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
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
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = _177
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), _177
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_184] == bool(mem[_184])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _189 = mem[_188]
        require mem[_188] == mem[_188]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _193 = mem[_192]
        require mem[_192] == mem[_192]
        require mem[_192 + 32] == mem[_192 + 32]
        require mem[_192 + 64] == mem[_192 + 92 len 4]
        require mem[_192 + 96] == mem[_192 + 124 len 4]
        mem[mem[64] + 4] = _177
        mem[mem[64] + 36] = _189
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[132]))
        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _177, _189, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_204] == mem[_204]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_208] == mem[_208]
        require mem[_208 + 32] == mem[_208 + 32]
        require mem[_208 + 64] == mem[_208 + 92 len 4]
        require mem[_208 + 96] == mem[_208 + 124 len 4]
        if mem[_208] < _193:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_208] - _193
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
    mem[_27] = _26
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
    mem[_93] = _92
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
        mem[mem[64] + 228] = _92
        idx = 0
        s = _93 + 32
        t = mem[64] + 260
        while idx < _92:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _218 = mem[_153 + 96]
        mem[mem[64] + 196] = (32 * _92) + 160
        _220 = mem[_218]
        mem[mem[64] + (32 * _92) + 260] = mem[_218]
        idx = 0
        s = _218 + 32
        t = mem[64] + (32 * _92) + 292
        while idx < _220:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _156 + (32 * _92) + (32 * _220) + -mem[64] + 288]
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
        mem[mem[64] + 228] = _92
        idx = 0
        s = _93 + 32
        t = mem[64] + 260
        while idx < _92:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _219 = mem[_153 + 96]
        mem[mem[64] + 196] = (32 * _92) + 160
        _221 = mem[_219]
        mem[mem[64] + (32 * _92) + 260] = mem[_219]
        idx = 0
        s = _219 + 32
        t = mem[64] + (32 * _92) + 292
        while idx < _221:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplitToAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _157 + (32 * _92) + (32 * _221) + -mem[64] + 288]
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
    mem[_29] = _28
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
    mem[_101] = _100
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
        mem[mem[64] + 228] = _100
        idx = 0
        s = _101 + 32
        t = mem[64] + 260
        while idx < _100:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _252 = mem[_173 + 96]
        mem[mem[64] + 196] = (32 * _100) + 160
        _254 = mem[_252]
        mem[mem[64] + (32 * _100) + 260] = mem[_252]
        idx = 0
        s = _252 + 32
        t = mem[64] + (32 * _100) + 292
        while idx < _254:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _176 + (32 * _100) + (32 * _254) + -mem[64] + 288]
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
        mem[mem[64] + 228] = _100
        idx = 0
        s = _101 + 32
        t = mem[64] + 260
        while idx < _100:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _253 = mem[_173 + 96]
        mem[mem[64] + 196] = (32 * _100) + 160
        _255 = mem[_253]
        mem[mem[64] + (32 * _100) + 260] = mem[_253]
        idx = 0
        s = _253 + 32
        t = mem[64] + (32 * _100) + 292
        while idx < _255:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplitToAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _177 + (32 * _100) + (32 * _255) + -mem[64] + 288]
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
    mem[ceil32(return_data.size) + 100] = address(('cd', 68)[0])
    mem[ceil32(return_data.size) + 132] = cd[4]
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
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
    _17 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _18 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    require _17 + (32 * _18) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _17 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _18:
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
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _99 = mem[_97]
        require mem[_97] == mem[_97]
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = _99
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), _99
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == bool(mem[_109])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _116 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _119 = mem[_116]
        require mem[_116] == mem[_116]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _127 = mem[_125]
        require mem[_125] == mem[_125]
        require mem[_125 + 32] == mem[_125 + 32]
        require mem[_125 + 64] == mem[_125 + 92 len 4]
        require mem[_125 + 96] == mem[_125 + 124 len 4]
        mem[mem[64] + 4] = _99
        mem[mem[64] + 36] = _119
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[132]))
        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _99, _119, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_144] == mem[_144]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_152] == mem[_152]
        require mem[_152 + 32] == mem[_152 + 32]
        require mem[_152 + 64] == mem[_152 + 92 len 4]
        require mem[_152 + 96] == mem[_152 + 124 len 4]
        if mem[_152] < _127:
            revert with 'NH{q', 17
        if mem[_152] - _127 < cd[164]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _178 = mem[_175]
        require mem[_175] == mem[_175]
        if mem[_175] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _191 = mem[_187]
            require mem[_187] == mem[_187]
            if mem[_187] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _191
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _191
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_204] == bool(mem[_204])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _178
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _178
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_189] == bool(mem[_189])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _207 = mem[_205]
            require mem[_205] == mem[_205]
            if mem[_205] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _207
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _207
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_215] == bool(mem[_215])
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
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _198 = mem[_196]
            require mem[_196] == mem[_196]
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
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 36] = _198
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[68] + 36)]), _198
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_225] == bool(mem[_225])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            _228 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _198
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
            mem[_228 + 100] = this.address
            mem[_228 + 132] = block.timestamp + 60
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _260 = mem[_257]
            require mem[_257] <= test266151307()
            require _257 + mem[_257] + 31 < _257 + return_data.size
            _262 = mem[_257 + mem[_257]]
            if mem[_257 + mem[_257]] > test266151307():
                revert with 'NH{q', 65
            if _257 + ceil32(return_data.size) + floor32(mem[_257 + mem[_257]]) + 1 > test266151307() or floor32(mem[_257 + mem[_257]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _257 + ceil32(return_data.size) + floor32(mem[_257 + mem[_257]]) + 1
            mem[_257 + ceil32(return_data.size)] = _262
            require _260 + (32 * _262) + 32 <= return_data.size
            s = 0
            t = _257 + _260 + 32
            u = _257 + ceil32(return_data.size) + 32
            while s < _262:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _262 == -1:
                revert with 'NH{q', 17
            s = _262 + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _186 = mem[_184]
        require mem[_184] == mem[_184]
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = _186
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), _186
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_200] == bool(mem[_200])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _210 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _211 = mem[_210]
        require mem[_210] == mem[_210]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _219 = mem[_217]
        require mem[_217] == mem[_217]
        require mem[_217 + 32] == mem[_217 + 32]
        require mem[_217 + 64] == mem[_217 + 92 len 4]
        require mem[_217 + 96] == mem[_217 + 124 len 4]
        mem[mem[64] + 4] = _186
        mem[mem[64] + 36] = _211
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[132]))
        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _186, _211, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _230 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_230] == mem[_230]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_234] == mem[_234]
        require mem[_234 + 32] == mem[_234 + 32]
        require mem[_234 + 64] == mem[_234 + 92 len 4]
        require mem[_234 + 96] == mem[_234 + 124 len 4]
        if mem[_234] < _219:
            revert with 'NH{q', 17
        if mem[_234] - _219 < cd[164]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _249 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _250 = mem[_249]
        require mem[_249] == mem[_249]
        if mem[_249] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _259 = mem[_255]
            require mem[_255] == mem[_255]
            if mem[_255] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _259
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _259
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_269] == bool(mem[_269])
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
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == bool(mem[_258])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
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
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
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
    mem[_24] = _23
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
    mem[_90] = _89
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
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        mem[mem[64] + 228] = _89
        idx = 0
        s = _90 + 32
        t = mem[64] + 260
        while idx < _89:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _215 = mem[_150 + 96]
        mem[mem[64] + 196] = (32 * _89) + 160
        _217 = mem[_215]
        mem[mem[64] + (32 * _89) + 260] = mem[_215]
        idx = 0
        s = _215 + 32
        t = mem[64] + (32 * _89) + 292
        while idx < _217:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, Mask(255, 1, arg1), 0, 128, (32 * _89) + 160, _89, mem[mem[64] + 260 len (32 * _89) + (32 * _217) + 32]
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
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        mem[mem[64] + 228] = _89
        idx = 0
        s = _90 + 32
        t = mem[64] + 260
        while idx < _89:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _216 = mem[_150 + 96]
        mem[mem[64] + 196] = (32 * _89) + 160
        _218 = mem[_216]
        mem[mem[64] + (32 * _89) + 260] = mem[_216]
        idx = 0
        s = _216 + 32
        t = mem[64] + (32 * _89) + 292
        while idx < _218:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplitToAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, Mask(255, 1, arg1), 0, 128, (32 * _89) + 160, _89, mem[mem[64] + 260 len (32 * _89) + (32 * _218) + 32]
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
    staticcall address(cd[164]).0xd21220a7 with:
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
        mem[(6 * ceil32(return_data.size)) + 100] = address(('cd', 68)[0])
        mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
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
        _226 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
        _229 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
        mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
        require _226 + (32 * _229) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _226 + 128
        t = (8 * ceil32(return_data.size)) + 128
        while idx < _229:
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
            _418 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _424 = mem[_418]
            require mem[_418] == mem[_418]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _451 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _460 = mem[_451]
            require mem[_451] == mem[_451]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _424
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _424
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _478 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_478] == bool(mem[_478])
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _460
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _460
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _502 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_502] == bool(mem[_502])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _460
            mem[mem[64] + 100] = _424
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[132]))
            call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor0, address(cd[36]), _460, _424, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _541 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_541] == mem[_541]
            require mem[_541 + 32] == mem[_541 + 32]
            require mem[_541 + 64] == mem[_541 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _595 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _601 = mem[_595]
            require mem[_595] == mem[_595]
            mem[mem[64] + 4] = address(cd[196])
            mem[mem[64] + 36] = _601
            require ext_code.size(address(cd[164]))
            call address(cd[164]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[196]), _601
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _622 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_622] == bool(mem[_622])
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _646 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _649 = mem[_646]
            require mem[_646] == mem[_646]
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _679 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _682 = mem[_679]
            require mem[_679] == mem[_679]
            require mem[_679 + 32] == mem[_679 + 32]
            require mem[_679 + 64] == mem[_679 + 92 len 4]
            require mem[_679 + 96] == mem[_679 + 124 len 4]
            mem[mem[64] + 4] = _601
            mem[mem[64] + 36] = _649
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(cd[196]))
            call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _601, _649, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _727 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_727] == mem[_727]
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _751 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_751] == mem[_751]
            require mem[_751 + 32] == mem[_751 + 32]
            require mem[_751 + 64] == mem[_751 + 92 len 4]
            require mem[_751 + 96] == mem[_751 + 124 len 4]
            if mem[_751] < _682:
                revert with 'NH{q', 17
            if mem[_751] - _682 < cd[228]:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _808 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _814 = mem[_808]
            require mem[_808] == mem[_808]
            if mem[_808] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _841 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _850 = mem[_841]
                require mem[_841] == mem[_841]
                if mem[_841] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _850
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _850
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_880] == bool(mem[_880])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _814
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _814
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_847] == bool(mem[_847])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _881 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _887 = mem[_881]
                require mem[_881] == mem[_881]
                if mem[_881] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _887
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _887
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _928 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_928] == bool(mem[_928])
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
                _658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _667 = mem[_658]
                require mem[_658] == mem[_658]
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
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 36] = _667
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[68] + 36)]), _667
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _736 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_736] == bool(mem[_736])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                _754 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _667
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
                mem[_754 + 100] = this.address
                mem[_754 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _897 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _905 = mem[_897]
                require mem[_897] <= test266151307()
                require _897 + mem[_897] + 31 < _897 + return_data.size
                _911 = mem[_897 + mem[_897]]
                if mem[_897 + mem[_897]] > test266151307():
                    revert with 'NH{q', 65
                if _897 + ceil32(return_data.size) + floor32(mem[_897 + mem[_897]]) + 1 > test266151307() or floor32(mem[_897 + mem[_897]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _897 + ceil32(return_data.size) + floor32(mem[_897 + mem[_897]]) + 1
                mem[_897 + ceil32(return_data.size)] = _911
                require _905 + (32 * _911) + 32 <= return_data.size
                s = 0
                t = _897 + _905 + 32
                u = _897 + ceil32(return_data.size) + 32
                while s < _911:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if _911 == -1:
                    revert with 'NH{q', 17
                s = _911 + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
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
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _670 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _673 = mem[_670]
            require mem[_670] == mem[_670]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _634
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _634
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _695 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_695] == bool(mem[_695])
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _673
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _673
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _718 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_718] == bool(mem[_718])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _673
            mem[mem[64] + 100] = _634
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[132]))
            call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor0, address(cd[36]), _673, _634, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _778 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_778] == mem[_778]
            require mem[_778 + 32] == mem[_778 + 32]
            require mem[_778 + 64] == mem[_778 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _832 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _838 = mem[_832]
            require mem[_832] == mem[_832]
            mem[mem[64] + 4] = address(cd[196])
            mem[mem[64] + 36] = _838
            require ext_code.size(address(cd[164]))
            call address(cd[164]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[196]), _838
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _868 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_868] == bool(mem[_868])
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _904 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _910 = mem[_904]
            require mem[_904] == mem[_904]
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
            _943 = mem[_934]
            require mem[_934] == mem[_934]
            require mem[_934 + 32] == mem[_934 + 32]
            require mem[_934 + 64] == mem[_934 + 92 len 4]
            require mem[_934 + 96] == mem[_934 + 124 len 4]
            mem[mem[64] + 4] = _838
            mem[mem[64] + 36] = _910
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(cd[196]))
            call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _838, _910, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _961 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_961] == mem[_961]
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _973 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_973] == mem[_973]
            require mem[_973 + 32] == mem[_973 + 32]
            require mem[_973 + 64] == mem[_973 + 92 len 4]
            require mem[_973 + 96] == mem[_973 + 124 len 4]
            if mem[_973] < _943:
                revert with 'NH{q', 17
            if mem[_973] - _943 < cd[228]:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1000 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1003 = mem[_1000]
            require mem[_1000] == mem[_1000]
            if mem[_1000] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1015 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1024 = mem[_1015]
                require mem[_1015] == mem[_1015]
                if mem[_1015] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1024
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1024
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1045 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1045] == bool(mem[_1045])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1003
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1003
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1021 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1021] == bool(mem[_1021])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1046 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1052 = mem[_1046]
                require mem[_1046] == mem[_1046]
                if mem[_1046] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1052
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1052
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1063] == bool(mem[_1063])
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
            mem[(6 * ceil32(return_data.size)) + 100] = address(('cd', 68)[0])
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
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
            _228 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _231 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
            require _228 + (32 * _231) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _228 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _231:
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
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _428 = mem[_420]
                require mem[_420] == mem[_420]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _464 = mem[_453]
                require mem[_453] == mem[_453]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _428
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _428
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_480] == bool(mem[_480])
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _464
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _464
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_504] == bool(mem[_504])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _464
                mem[mem[64] + 100] = _428
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[132]))
                call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor0, address(cd[36]), _464, _428, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_545] == mem[_545]
                require mem[_545 + 32] == mem[_545 + 32]
                require mem[_545 + 64] == mem[_545 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[164]))
                staticcall address(cd[164]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _597 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _605 = mem[_597]
                require mem[_597] == mem[_597]
                mem[mem[64] + 4] = address(cd[196])
                mem[mem[64] + 36] = _605
                require ext_code.size(address(cd[164]))
                call address(cd[164]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[196]), _605
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _624 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_624] == bool(mem[_624])
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _653 = mem[_648]
                require mem[_648] == mem[_648]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _681 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _686 = mem[_681]
                require mem[_681] == mem[_681]
                require mem[_681 + 32] == mem[_681 + 32]
                require mem[_681 + 64] == mem[_681 + 92 len 4]
                require mem[_681 + 96] == mem[_681 + 124 len 4]
                mem[mem[64] + 4] = _605
                mem[mem[64] + 36] = _653
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(address(cd[196]))
                call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _605, _653, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _729 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_729] == mem[_729]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _753 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_753] == mem[_753]
                require mem[_753 + 32] == mem[_753 + 32]
                require mem[_753 + 64] == mem[_753 + 92 len 4]
                require mem[_753 + 96] == mem[_753 + 124 len 4]
                if mem[_753] < _686:
                    revert with 'NH{q', 17
                if mem[_753] - _686 < cd[228]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _812 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _816 = mem[_812]
                require mem[_812] == mem[_812]
                if mem[_812] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _852 = mem[_845]
                    require mem[_845] == mem[_845]
                    if mem[_845] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _852
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _852
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_884] == bool(mem[_884])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _816
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _816
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_849] == bool(mem[_849])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _893 = mem[_885]
                    require mem[_885] == mem[_885]
                    if mem[_885] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _893
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _893
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_932] == bool(mem[_932])
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
                    _660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _669 = mem[_660]
                    require mem[_660] == mem[_660]
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
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 36] = _669
                    require ext_code.size(stor0)
                    call stor0.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[68] + 36)]), _669
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _738 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_738] == bool(mem[_738])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    _756 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _669
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
                    mem[_756 + 100] = this.address
                    mem[_756 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len u + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _903 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _909 = mem[_903]
                    require mem[_903] <= test266151307()
                    require _903 + mem[_903] + 31 < _903 + return_data.size
                    _915 = mem[_903 + mem[_903]]
                    if mem[_903 + mem[_903]] > test266151307():
                        revert with 'NH{q', 65
                    if _903 + ceil32(return_data.size) + floor32(mem[_903 + mem[_903]]) + 1 > test266151307() or floor32(mem[_903 + mem[_903]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _903 + ceil32(return_data.size) + floor32(mem[_903 + mem[_903]]) + 1
                    mem[_903 + ceil32(return_data.size)] = _915
                    require _909 + (32 * _915) + 32 <= return_data.size
                    s = 0
                    t = _903 + _909 + 32
                    u = _903 + ceil32(return_data.size) + 32
                    while s < _915:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _915 == -1:
                        revert with 'NH{q', 17
                    s = _915 + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
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
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _672 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _675 = mem[_672]
                require mem[_672] == mem[_672]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _636
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _636
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_699] == bool(mem[_699])
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _675
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _675
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _720 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_720] == bool(mem[_720])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _675
                mem[mem[64] + 100] = _636
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[132]))
                call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor0, address(cd[36]), _675, _636, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _780 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_780] == mem[_780]
                require mem[_780 + 32] == mem[_780 + 32]
                require mem[_780 + 64] == mem[_780 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[164]))
                staticcall address(cd[164]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _834 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _840 = mem[_834]
                require mem[_834] == mem[_834]
                mem[mem[64] + 4] = address(cd[196])
                mem[mem[64] + 36] = _840
                require ext_code.size(address(cd[164]))
                call address(cd[164]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[196]), _840
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _870 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_870] == bool(mem[_870])
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _908 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _914 = mem[_908]
                require mem[_908] == mem[_908]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _938 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _945 = mem[_938]
                require mem[_938] == mem[_938]
                require mem[_938 + 32] == mem[_938 + 32]
                require mem[_938 + 64] == mem[_938 + 92 len 4]
                require mem[_938 + 96] == mem[_938 + 124 len 4]
                mem[mem[64] + 4] = _840
                mem[mem[64] + 36] = _914
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(address(cd[196]))
                call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _840, _914, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _963 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_963] == mem[_963]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _975 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_975] == mem[_975]
                require mem[_975 + 32] == mem[_975 + 32]
                require mem[_975 + 64] == mem[_975 + 92 len 4]
                require mem[_975 + 96] == mem[_975 + 124 len 4]
                if mem[_975] < _945:
                    revert with 'NH{q', 17
                if mem[_975] - _945 < cd[228]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1002 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1005 = mem[_1002]
                require mem[_1002] == mem[_1002]
                if mem[_1002] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1019 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1026 = mem[_1019]
                    require mem[_1019] == mem[_1019]
                    if mem[_1019] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1026
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1026
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1049] == bool(mem[_1049])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1005
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1005
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1023 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1023] == bool(mem[_1023])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1050 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1056 = mem[_1050]
                    require mem[_1050] == mem[_1050]
                    if mem[_1050] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1056
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1056
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1065 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1065] == bool(mem[_1065])
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
            mem[(6 * ceil32(return_data.size)) + 100] = address(('cd', 68)[0])
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
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
            _227 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _230 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _227 + (32 * _230) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _227 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _230:
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
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _426 = mem[_419]
                require mem[_419] == mem[_419]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _462 = mem[_452]
                require mem[_452] == mem[_452]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _426
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _426
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_479] == bool(mem[_479])
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _462
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _462
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_503] == bool(mem[_503])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _462
                mem[mem[64] + 100] = _426
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[132]))
                call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor0, address(cd[36]), _462, _426, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _543 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_543] == mem[_543]
                require mem[_543 + 32] == mem[_543 + 32]
                require mem[_543 + 64] == mem[_543 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[164]))
                staticcall address(cd[164]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _603 = mem[_596]
                require mem[_596] == mem[_596]
                mem[mem[64] + 4] = address(cd[196])
                mem[mem[64] + 36] = _603
                require ext_code.size(address(cd[164]))
                call address(cd[164]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[196]), _603
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _623 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_623] == bool(mem[_623])
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _651 = mem[_647]
                require mem[_647] == mem[_647]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _680 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _684 = mem[_680]
                require mem[_680] == mem[_680]
                require mem[_680 + 32] == mem[_680 + 32]
                require mem[_680 + 64] == mem[_680 + 92 len 4]
                require mem[_680 + 96] == mem[_680 + 124 len 4]
                mem[mem[64] + 4] = _603
                mem[mem[64] + 36] = _651
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(address(cd[196]))
                call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _603, _651, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _728 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_728] == mem[_728]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _752 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_752] == mem[_752]
                require mem[_752 + 32] == mem[_752 + 32]
                require mem[_752 + 64] == mem[_752 + 92 len 4]
                require mem[_752 + 96] == mem[_752 + 124 len 4]
                if mem[_752] < _684:
                    revert with 'NH{q', 17
                if mem[_752] - _684 < cd[228]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _810 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _815 = mem[_810]
                require mem[_810] == mem[_810]
                if mem[_810] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _851 = mem[_843]
                    require mem[_843] == mem[_843]
                    if mem[_843] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _851
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _851
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _882 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_882] == bool(mem[_882])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _815
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _815
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_848] == bool(mem[_848])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _883 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _890 = mem[_883]
                    require mem[_883] == mem[_883]
                    if mem[_883] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _890
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _890
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_930] == bool(mem[_930])
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
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _668 = mem[_659]
                    require mem[_659] == mem[_659]
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
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 36] = _668
                    require ext_code.size(stor0)
                    call stor0.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[68] + 36)]), _668
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _737 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_737] == bool(mem[_737])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    _755 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _668
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
                    mem[_755 + 100] = this.address
                    mem[_755 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len u + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _900 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _907 = mem[_900]
                    require mem[_900] <= test266151307()
                    require _900 + mem[_900] + 31 < _900 + return_data.size
                    _913 = mem[_900 + mem[_900]]
                    if mem[_900 + mem[_900]] > test266151307():
                        revert with 'NH{q', 65
                    if _900 + ceil32(return_data.size) + floor32(mem[_900 + mem[_900]]) + 1 > test266151307() or floor32(mem[_900 + mem[_900]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _900 + ceil32(return_data.size) + floor32(mem[_900 + mem[_900]]) + 1
                    mem[_900 + ceil32(return_data.size)] = _913
                    require _907 + (32 * _913) + 32 <= return_data.size
                    s = 0
                    t = _900 + _907 + 32
                    u = _900 + ceil32(return_data.size) + 32
                    while s < _913:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _913 == -1:
                        revert with 'NH{q', 17
                    s = _913 + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
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
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _671 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _674 = mem[_671]
                require mem[_671] == mem[_671]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _635
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _635
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _697 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_697] == bool(mem[_697])
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _674
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _674
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_719] == bool(mem[_719])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _674
                mem[mem[64] + 100] = _635
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[132]))
                call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor0, address(cd[36]), _674, _635, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _779 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_779] == mem[_779]
                require mem[_779 + 32] == mem[_779 + 32]
                require mem[_779 + 64] == mem[_779 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[164]))
                staticcall address(cd[164]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _839 = mem[_833]
                require mem[_833] == mem[_833]
                mem[mem[64] + 4] = address(cd[196])
                mem[mem[64] + 36] = _839
                require ext_code.size(address(cd[164]))
                call address(cd[164]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[196]), _839
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _869 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_869] == bool(mem[_869])
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _906 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _912 = mem[_906]
                require mem[_906] == mem[_906]
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
                _944 = mem[_936]
                require mem[_936] == mem[_936]
                require mem[_936 + 32] == mem[_936 + 32]
                require mem[_936 + 64] == mem[_936 + 92 len 4]
                require mem[_936 + 96] == mem[_936 + 124 len 4]
                mem[mem[64] + 4] = _839
                mem[mem[64] + 36] = _912
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(address(cd[196]))
                call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _839, _912, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _962 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_962] == mem[_962]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _974 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_974] == mem[_974]
                require mem[_974 + 32] == mem[_974 + 32]
                require mem[_974 + 64] == mem[_974 + 92 len 4]
                require mem[_974 + 96] == mem[_974 + 124 len 4]
                if mem[_974] < _944:
                    revert with 'NH{q', 17
                if mem[_974] - _944 < cd[228]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1001 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1004 = mem[_1001]
                require mem[_1001] == mem[_1001]
                if mem[_1001] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1017 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1025 = mem[_1017]
                    require mem[_1017] == mem[_1017]
                    if mem[_1017] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1025
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1025
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1047] == bool(mem[_1047])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1004
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1004
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1022] == bool(mem[_1022])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1048 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1054 = mem[_1048]
                    require mem[_1048] == mem[_1048]
                    if mem[_1048] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1054
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1054
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1064 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1064] == bool(mem[_1064])
}



}
