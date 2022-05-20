contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor1 = arg1
}

function sub_c6843d05(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor2 = address(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor0[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor0[address(arg1)] = 0
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveFor(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0e003b2f(?) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[96] = 2
    mem[128] = stor6
    mem[160] = stor7
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 1
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = this.address
    mem[324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _70 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _71 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _70 + (32 * _71) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _71] = mem[_70 + 224 len 32 * _71]
    if 1 >= _71:
        revert with 0, 50
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 256]
    mem[mem[64] + 36] = this.address
    require ext_code.size(stor12)
    call stor12.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _133 = mem[_132]
    mem[mem[64] + 4] = mem[_132]
    require ext_code.size(stor9)
    call stor9.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args _133
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _136 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _137 = mem[_136]
    mem[mem[64] + 68] = stor15
    mem[mem[64] + 100] = _137
    mem[mem[64] + 132] = this.address
    require ext_code.size(stor5)
    call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args stor16, stor14, stor15, _137, this.address
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _140 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_140] == mem[_140 + 12 len 20]
    require mem[_140 + 32] == mem[_140 + 44 len 20]
    mem[128] = stor10
    mem[160] = stor6
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _148 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _149 = mem[_148]
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _149
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = mem[64] + 196
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _149, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _180 = mem[_179]
    require mem[_179] <= test266151307()
    require _179 + mem[_179] + 31 < _179 + return_data.size
    _181 = mem[_179 + mem[_179]]
    if mem[_179 + mem[_179]] > test266151307():
        revert with 0, 65
    if _179 + ceil32(return_data.size) + ceil32(32 * mem[_179 + mem[_179]]) + 1 > test266151307() or ceil32(32 * mem[_179 + mem[_179]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _179 + ceil32(return_data.size) + ceil32(32 * mem[_179 + mem[_179]]) + 1
    mem[_179 + ceil32(return_data.size)] = _181
    require return_data.size >= _180 + (32 * _181) + 32
    mem[_179 + ceil32(return_data.size) + 32 len 32 * _181] = mem[_179 + _180 + 32 len 32 * _181]
    if 1 >= _181:
        revert with 0, 50
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _207 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _208 = mem[_207]
    mem[mem[64] + 36] = stor6
    mem[mem[64] + 68] = _208
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor17
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor11, stor6, _208, 1, stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _215 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_215] <= arg1:
        revert with 0, 'no profit'
    mem[mem[64]] = mem[_215]
    return memory
      from mem[64]
       len 32
}

function sub_75fcf991(?) {
    require calldata.size - 4 >= 32
    mem[100] = stor2
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args stor2, this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor6
    mem[ceil32(return_data.size) + 160] = stor7
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _78 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _79 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _78 + (32 * _79) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _79] = mem[ceil32(return_data.size) + _78 + 224 len 32 * _79]
    if 1 >= _79:
        revert with 0, 50
    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 36] = this.address
    require ext_code.size(stor12)
    call stor12.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _144 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _145 = mem[_144]
    mem[mem[64] + 4] = mem[_144]
    require ext_code.size(stor9)
    call stor9.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args _145
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _148 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _149 = mem[_148]
    mem[mem[64] + 68] = stor15
    mem[mem[64] + 100] = _149
    mem[mem[64] + 132] = this.address
    require ext_code.size(stor5)
    call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args stor16, stor14, stor15, _149, this.address
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _152 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_152] == mem[_152 + 12 len 20]
    require mem[_152 + 32] == mem[_152 + 44 len 20]
    mem[ceil32(return_data.size) + 128] = stor10
    mem[ceil32(return_data.size) + 160] = stor6
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _161 = mem[_160]
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _161
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = mem[64] + 196
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _161, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _195 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _196 = mem[_195]
    require mem[_195] <= test266151307()
    require _195 + mem[_195] + 31 < _195 + return_data.size
    _197 = mem[_195 + mem[_195]]
    if mem[_195 + mem[_195]] > test266151307():
        revert with 0, 65
    if _195 + ceil32(return_data.size) + ceil32(32 * mem[_195 + mem[_195]]) + 1 > test266151307() or ceil32(32 * mem[_195 + mem[_195]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _195 + ceil32(return_data.size) + ceil32(32 * mem[_195 + mem[_195]]) + 1
    mem[_195 + ceil32(return_data.size)] = _197
    require return_data.size >= _196 + (32 * _197) + 32
    mem[_195 + ceil32(return_data.size) + 32 len 32 * _197] = mem[_195 + _196 + 32 len 32 * _197]
    if 1 >= _197:
        revert with 0, 50
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _227 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _228 = mem[_227]
    mem[mem[64] + 36] = stor6
    mem[mem[64] + 68] = _228
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor17
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor11, stor6, _228, 1, stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _235 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _236 = mem[_235]
    if mem[_235] <= arg1:
        revert with 0, 'no profit'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _236
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _236
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _241 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_241] == bool(mem[_241])
    return _236
}

function sub_dd10a3d6(?) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[96] = 2
    mem[128] = stor6
    mem[160] = stor10
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 1
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = this.address
    mem[324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _83 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _84 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _83 + (32 * _84) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _84] = mem[_83 + 224 len 32 * _84]
    if 1 >= _84:
        revert with 0, 50
    _153 = mem[ceil32(return_data.size) + 256]
    if arg1 < arg2:
        revert with 0, 17
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = stor11
    mem[mem[64] + 68] = arg1 - arg2
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor17
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor6, stor11, arg1 - arg2, 1, stor17
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _156 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _157 = mem[_156]
    mem[mem[64] + 4] = stor16
    mem[mem[64] + 36] = stor14
    mem[mem[64] + 68] = stor15
    if _153 > mem[_156]:
        mem[mem[64] + 100] = _157
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor16, stor14, stor15, _157
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _164 = mem[_162]
        mem[mem[64] + 4] = mem[_162]
        require ext_code.size(stor9)
        call stor9.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args _164
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _170 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _172 = mem[_170]
        mem[mem[64] + 4] = mem[_170]
        mem[mem[64] + 36] = 0
        require ext_code.size(stor13)
        call stor13.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[128] = stor7
        mem[160] = stor6
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _172
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = mem[64] + 196
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _172, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _220 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _222 = mem[_220]
        require mem[_220] <= test266151307()
        require _220 + mem[_220] + 31 < _220 + return_data.size
        _224 = mem[_220 + mem[_220]]
        if mem[_220 + mem[_220]] > test266151307():
            revert with 0, 65
        if _220 + ceil32(return_data.size) + ceil32(32 * mem[_220 + mem[_220]]) + 1 > test266151307() or ceil32(32 * mem[_220 + mem[_220]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _220 + ceil32(return_data.size) + ceil32(32 * mem[_220 + mem[_220]]) + 1
        mem[_220 + ceil32(return_data.size)] = _224
        require return_data.size >= _222 + (32 * _224) + 32
        mem[_220 + ceil32(return_data.size) + 32 len 32 * _224] = mem[_220 + _222 + 32 len 32 * _224]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _252 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_252] <= arg1:
            revert with 0, 'no profit'
        mem[mem[64]] = mem[_252]
    else:
        mem[mem[64] + 100] = _153
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor16, stor14, stor15, _153
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _165 = mem[_163]
        mem[mem[64] + 4] = mem[_163]
        require ext_code.size(stor9)
        call stor9.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args _165
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _173 = mem[_171]
        mem[mem[64] + 4] = mem[_171]
        mem[mem[64] + 36] = 0
        require ext_code.size(stor13)
        call stor13.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[128] = stor7
        mem[160] = stor6
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _173
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = mem[64] + 196
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _173, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _221 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _223 = mem[_221]
        require mem[_221] <= test266151307()
        require _221 + mem[_221] + 31 < _221 + return_data.size
        _225 = mem[_221 + mem[_221]]
        if mem[_221 + mem[_221]] > test266151307():
            revert with 0, 65
        if _221 + ceil32(return_data.size) + ceil32(32 * mem[_221 + mem[_221]]) + 1 > test266151307() or ceil32(32 * mem[_221 + mem[_221]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _221 + ceil32(return_data.size) + ceil32(32 * mem[_221 + mem[_221]]) + 1
        mem[_221 + ceil32(return_data.size)] = _225
        require return_data.size >= _223 + (32 * _225) + 32
        mem[_221 + ceil32(return_data.size) + 32 len 32 * _225] = mem[_221 + _223 + 32 len 32 * _225]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _253 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_253] <= arg1:
            revert with 0, 'no profit'
        mem[mem[64]] = mem[_253]
    return memory
      from mem[64]
       len 32
}

function sub_1865ce62(?) {
    require calldata.size - 4 >= 64
    mem[100] = stor2
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args stor2, this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor6
    mem[ceil32(return_data.size) + 160] = stor10
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _95 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _96 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _95 + (32 * _96) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[ceil32(return_data.size) + _95 + 224 len 32 * _96]
    if 1 >= _96:
        revert with 0, 50
    _173 = mem[(2 * ceil32(return_data.size)) + 256]
    if arg1 < arg2:
        revert with 0, 17
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = stor11
    mem[mem[64] + 68] = arg1 - arg2
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor17
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor6, stor11, arg1 - arg2, 1, stor17
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _176 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _177 = mem[_176]
    mem[mem[64] + 4] = stor16
    mem[mem[64] + 36] = stor14
    mem[mem[64] + 68] = stor15
    if _173 > mem[_176]:
        mem[mem[64] + 100] = _177
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor16, stor14, stor15, _177
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _184 = mem[_182]
        mem[mem[64] + 4] = mem[_182]
        require ext_code.size(stor9)
        call stor9.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args _184
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _192 = mem[_190]
        mem[mem[64] + 4] = mem[_190]
        require ext_code.size(stor13)
        call stor13.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 128] = stor7
        mem[ceil32(return_data.size) + 160] = stor6
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _192
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = mem[64] + 196
        t = ceil32(return_data.size) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _192, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _248 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _250 = mem[_248]
        require mem[_248] <= test266151307()
        require _248 + mem[_248] + 31 < _248 + return_data.size
        _252 = mem[_248 + mem[_248]]
        if mem[_248 + mem[_248]] > test266151307():
            revert with 0, 65
        if _248 + ceil32(return_data.size) + ceil32(32 * mem[_248 + mem[_248]]) + 1 > test266151307() or ceil32(32 * mem[_248 + mem[_248]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _248 + ceil32(return_data.size) + ceil32(32 * mem[_248 + mem[_248]]) + 1
        mem[_248 + ceil32(return_data.size)] = _252
        require return_data.size >= _250 + (32 * _252) + 32
        mem[_248 + ceil32(return_data.size) + 32 len 32 * _252] = mem[_248 + _250 + 32 len 32 * _252]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _290 = mem[_288]
        if mem[_288] <= arg1:
            revert with 0, 'no profit'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _290
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _290
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _300 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_300] == bool(mem[_300])
        return _290
    mem[mem[64] + 100] = _173
    require ext_code.size(stor5)
    call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args stor16, stor14, stor15, _173
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _183 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _185 = mem[_183]
    mem[mem[64] + 4] = mem[_183]
    require ext_code.size(stor9)
    call stor9.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args _185
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _191 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _193 = mem[_191]
    mem[mem[64] + 4] = mem[_191]
    require ext_code.size(stor13)
    call stor13.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 128] = stor7
    mem[ceil32(return_data.size) + 160] = stor6
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _193
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = mem[64] + 196
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _193, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _249 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _251 = mem[_249]
    require mem[_249] <= test266151307()
    require _249 + mem[_249] + 31 < _249 + return_data.size
    _253 = mem[_249 + mem[_249]]
    if mem[_249 + mem[_249]] > test266151307():
        revert with 0, 65
    if _249 + ceil32(return_data.size) + ceil32(32 * mem[_249 + mem[_249]]) + 1 > test266151307() or ceil32(32 * mem[_249 + mem[_249]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _249 + ceil32(return_data.size) + ceil32(32 * mem[_249 + mem[_249]]) + 1
    mem[_249 + ceil32(return_data.size)] = _253
    require return_data.size >= _251 + (32 * _253) + 32
    mem[_249 + ceil32(return_data.size) + 32 len 32 * _253] = mem[_249 + _251 + 32 len 32 * _253]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _289 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _291 = mem[_289]
    if mem[_289] <= arg1:
        revert with 0, 'no profit'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _291
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _291
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _301 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_301] == bool(mem[_301])
    return _291
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x75fcf991(?????) > uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0x0e003b2f(?????):
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor1 != msg.sender:
                    revert with 0, 'not owner'
                stor1 = address(arg1)
            if uint32(call.func_hash) >> 224 != unknown_0x1865ce62(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x2b991746(?????):
                    require unknown_0x4782f779(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not stor0[msg.sender]:
                        revert with 0, 'not auth'
                    call address(arg1) with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if not stor0[msg.sender]:
                        revert with 0, 'not auth'
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require not msg.value
            require calldata.size - 4 >= 64
            mem[132] = stor2
            mem[164] = this.address
            mem[196] = arg1
            require ext_code.size(stor6)
            call stor6.0x23b872dd with:
                 gas gas_remaining wei
                args stor2, this.address, arg1
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = msg.sender
            mem[32] = 0
            if not stor0[msg.sender]:
                revert with 0, 'not auth'
            mem[ceil32(return_data.size) + 128] = 2
            mem[ceil32(return_data.size) + 160] = stor6
            mem[ceil32(return_data.size) + 192] = stor10
            if 2 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = arg2
            mem[ceil32(return_data.size) + 260] = 1
            mem[ceil32(return_data.size) + 292] = 160
            mem[ceil32(return_data.size) + 388] = 2
            idx = 0
            s = ceil32(return_data.size) + 420
            t = ceil32(return_data.size) + 160
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 324] = this.address
            mem[ceil32(return_data.size) + 356] = block.timestamp + 2
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 1, Array(len=2, data=mem[ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _352 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
            _356 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
            mem[(2 * ceil32(return_data.size)) + 224] = _356
            require return_data.size >= _352 + (32 * _356) + 32
            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _356] = mem[ceil32(return_data.size) + _352 + 256 len 32 * _356]
            if 1 >= _356:
                revert with 0, 50
            _620 = mem[(2 * ceil32(return_data.size)) + 288]
            if arg1 < arg2:
                revert with 0, 17
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = stor11
            mem[mem[64] + 68] = arg1 - arg2
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = stor17
            require ext_code.size(stor5)
            call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
                 gas gas_remaining wei
                args stor6, stor11, arg1 - arg2, 1, stor17
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _644 = mem[_639]
            mem[mem[64] + 4] = stor16
            mem[mem[64] + 36] = stor14
            mem[mem[64] + 68] = stor15
            if _620 > mem[_639]:
                mem[mem[64] + 100] = _644
                require ext_code.size(stor5)
                call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args stor16, stor14, stor15, _644
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _668 = mem[_662]
                mem[mem[64] + 4] = mem[_662]
                require ext_code.size(stor9)
                call stor9.unwrap(uint256 arg1) with:
                     gas gas_remaining wei
                    args _668
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _682 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _687 = mem[_682]
                mem[mem[64] + 4] = mem[_682]
                require ext_code.size(stor13)
                call stor13.unstake(uint256 arg1, bool arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 160] = stor7
                mem[ceil32(return_data.size) + 192] = stor6
                if 2 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _687
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = mem[64] + 196
                t = ceil32(return_data.size) + 160
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 2
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _687, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _868 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _874 = mem[_868]
                require mem[_868] <= test266151307()
                require _868 + mem[_868] + 31 < _868 + return_data.size
                _880 = mem[_868 + mem[_868]]
                if mem[_868 + mem[_868]] > test266151307():
                    revert with 0, 65
                if _868 + ceil32(return_data.size) + ceil32(32 * mem[_868 + mem[_868]]) + 1 > test266151307() or ceil32(32 * mem[_868 + mem[_868]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _868 + ceil32(return_data.size) + ceil32(32 * mem[_868 + mem[_868]]) + 1
                mem[_868 + ceil32(return_data.size)] = _880
                require return_data.size >= _874 + (32 * _880) + 32
                mem[_868 + ceil32(return_data.size) + 32 len 32 * _880] = mem[_868 + _874 + 32 len 32 * _880]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _999 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1005 = mem[_999]
                if mem[_999] <= arg1:
                    revert with 0, 'no profit'
                mem[mem[64] + 4] = stor2
                mem[mem[64] + 36] = _1005
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor2, _1005
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1033 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1033] == bool(mem[_1033])
                return _1005
            mem[mem[64] + 100] = _620
            require ext_code.size(stor5)
            call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor16, stor14, stor15, _620
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _669 = mem[_663]
            mem[mem[64] + 4] = mem[_663]
            require ext_code.size(stor9)
            call stor9.unwrap(uint256 arg1) with:
                 gas gas_remaining wei
                args _669
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _683 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _688 = mem[_683]
            mem[mem[64] + 4] = mem[_683]
            require ext_code.size(stor13)
            call stor13.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 160] = stor7
            mem[ceil32(return_data.size) + 192] = stor6
            if 2 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _688
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = mem[64] + 196
            t = ceil32(return_data.size) + 160
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 2
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _688, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _869 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _875 = mem[_869]
            require mem[_869] <= test266151307()
            require _869 + mem[_869] + 31 < _869 + return_data.size
            _881 = mem[_869 + mem[_869]]
            if mem[_869 + mem[_869]] > test266151307():
                revert with 0, 65
            if _869 + ceil32(return_data.size) + ceil32(32 * mem[_869 + mem[_869]]) + 1 > test266151307() or ceil32(32 * mem[_869 + mem[_869]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _869 + ceil32(return_data.size) + ceil32(32 * mem[_869 + mem[_869]]) + 1
            mem[_869 + ceil32(return_data.size)] = _881
            require return_data.size >= _875 + (32 * _881) + 32
            mem[_869 + ceil32(return_data.size) + 32 len 32 * _881] = mem[_869 + _875 + 32 len 32 * _881]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1000 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1006 = mem[_1000]
            if mem[_1000] <= arg1:
                revert with 0, 'no profit'
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = _1006
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, _1006
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1034 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1034] == bool(mem[_1034])
            return _1006
        require not msg.value
        require calldata.size - 4 >= 32
        mem[0] = msg.sender
        mem[32] = 0
        if not stor0[msg.sender]:
            revert with 0, 'not auth'
        mem[128] = 2
        mem[160] = stor6
        mem[192] = stor7
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = 1
        mem[292] = 160
        mem[388] = 2
        idx = 0
        s = 420
        t = 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = this.address
        mem[356] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 1, Array(len=2, data=mem[420 len 64]), address(this.address), block.timestamp + 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _351 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _355 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require return_data.size >= _351 + (32 * _355) + 32
        mem[ceil32(return_data.size) + 256 len 32 * _355] = mem[_351 + 256 len 32 * _355]
        if 1 >= _355:
            revert with 0, 50
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 36] = this.address
        require ext_code.size(stor12)
        call stor12.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _629 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _635 = mem[_629]
        mem[mem[64] + 4] = mem[_629]
        require ext_code.size(stor9)
        call stor9.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args _635
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _643 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _647 = mem[_643]
        mem[mem[64] + 68] = stor15
        mem[mem[64] + 100] = _647
        mem[mem[64] + 132] = this.address
        require ext_code.size(stor5)
        call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
             gas gas_remaining wei
            args stor16, stor14, stor15, _647, this.address
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _661 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_661] == mem[_661 + 12 len 20]
        require mem[_661 + 32] == mem[_661 + 44 len 20]
        mem[160] = stor10
        mem[192] = stor6
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _717 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _719 = mem[_717]
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _719
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = mem[64] + 196
        t = 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _719, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _867 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _873 = mem[_867]
        require mem[_867] <= test266151307()
        require _867 + mem[_867] + 31 < _867 + return_data.size
        _879 = mem[_867 + mem[_867]]
        if mem[_867 + mem[_867]] > test266151307():
            revert with 0, 65
        if _867 + ceil32(return_data.size) + ceil32(32 * mem[_867 + mem[_867]]) + 1 > test266151307() or ceil32(32 * mem[_867 + mem[_867]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _867 + ceil32(return_data.size) + ceil32(32 * mem[_867 + mem[_867]]) + 1
        mem[_867 + ceil32(return_data.size)] = _879
        require return_data.size >= _873 + (32 * _879) + 32
        mem[_867 + ceil32(return_data.size) + 32 len 32 * _879] = mem[_867 + _873 + 32 len 32 * _879]
        if 1 >= _879:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1003 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1009 = mem[_1003]
        mem[mem[64] + 36] = stor6
        mem[mem[64] + 68] = _1009
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = stor17
        require ext_code.size(stor5)
        call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args stor11, stor6, _1009, 1, stor17
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1043 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_1043] <= arg1:
            revert with 0, 'no profit'
        mem[mem[64]] = mem[_1043]
        return memory
          from mem[64]
           len 32
    if unknown_0xc6843d05(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xc6843d05(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor1 != msg.sender:
                revert with 0, 'not owner'
            stor2 = address(arg1)
        if uint32(call.func_hash) >> 224 != unknown_0xdd10a3d6(?????):
            require unknown_0xf0b37c04(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor1 != msg.sender:
                revert with 0, 'not owner'
            stor0[address(arg1)] = 0
        require not msg.value
        require calldata.size - 4 >= 64
        mem[0] = msg.sender
        mem[32] = 0
        if not stor0[msg.sender]:
            revert with 0, 'not auth'
        mem[128] = 2
        mem[160] = stor6
        mem[192] = stor10
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = arg2
        mem[260] = 1
        mem[292] = 160
        mem[388] = 2
        idx = 0
        s = 420
        t = 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = this.address
        mem[356] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=2, data=mem[420 len 64]), address(this.address), block.timestamp + 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _354 = mem[224 len 4], Mask(224, 32, arg2) >> 32
        require mem[224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg2) >> 32 + 255 < return_data.size + 224
        _358 = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        require return_data.size >= _354 + (32 * _358) + 32
        mem[ceil32(return_data.size) + 256 len 32 * _358] = mem[_354 + 256 len 32 * _358]
        if 1 >= _358:
            revert with 0, 50
        _624 = mem[ceil32(return_data.size) + 288]
        if arg1 < arg2:
            revert with 0, 17
        mem[mem[64] + 4] = stor6
        mem[mem[64] + 36] = stor11
        mem[mem[64] + 68] = arg1 - arg2
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = stor17
        require ext_code.size(stor5)
        call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args stor6, stor11, arg1 - arg2, 1, stor17
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _642 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _646 = mem[_642]
        mem[mem[64] + 4] = stor16
        mem[mem[64] + 36] = stor14
        mem[mem[64] + 68] = stor15
        if _624 > mem[_642]:
            mem[mem[64] + 100] = _646
            require ext_code.size(stor5)
            call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor16, stor14, stor15, _646
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _665 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _671 = mem[_665]
            mem[mem[64] + 4] = mem[_665]
            require ext_code.size(stor9)
            call stor9.unwrap(uint256 arg1) with:
                 gas gas_remaining wei
                args _671
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _689 = mem[_685]
            mem[mem[64] + 4] = mem[_685]
            require ext_code.size(stor13)
            call stor13.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160] = stor7
            mem[192] = stor6
            if 2 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _689
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = mem[64] + 196
            t = 160
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 2
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _689, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _871 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _877 = mem[_871]
            require mem[_871] <= test266151307()
            require _871 + mem[_871] + 31 < _871 + return_data.size
            _883 = mem[_871 + mem[_871]]
            if mem[_871 + mem[_871]] > test266151307():
                revert with 0, 65
            if _871 + ceil32(return_data.size) + ceil32(32 * mem[_871 + mem[_871]]) + 1 > test266151307() or ceil32(32 * mem[_871 + mem[_871]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _871 + ceil32(return_data.size) + ceil32(32 * mem[_871 + mem[_871]]) + 1
            mem[_871 + ceil32(return_data.size)] = _883
            require return_data.size >= _877 + (32 * _883) + 32
            mem[_871 + ceil32(return_data.size) + 32 len 32 * _883] = mem[_871 + _877 + 32 len 32 * _883]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1001 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1001] <= arg1:
                revert with 0, 'no profit'
            mem[mem[64]] = mem[_1001]
        else:
            mem[mem[64] + 100] = _624
            require ext_code.size(stor5)
            call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor16, stor14, stor15, _624
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _666 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _672 = mem[_666]
            mem[mem[64] + 4] = mem[_666]
            require ext_code.size(stor9)
            call stor9.unwrap(uint256 arg1) with:
                 gas gas_remaining wei
                args _672
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _686 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _690 = mem[_686]
            mem[mem[64] + 4] = mem[_686]
            require ext_code.size(stor13)
            call stor13.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160] = stor7
            mem[192] = stor6
            if 2 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _690
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = mem[64] + 196
            t = 160
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 2
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _690, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _872 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _878 = mem[_872]
            require mem[_872] <= test266151307()
            require _872 + mem[_872] + 31 < _872 + return_data.size
            _884 = mem[_872 + mem[_872]]
            if mem[_872 + mem[_872]] > test266151307():
                revert with 0, 65
            if _872 + ceil32(return_data.size) + ceil32(32 * mem[_872 + mem[_872]]) + 1 > test266151307() or ceil32(32 * mem[_872 + mem[_872]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _872 + ceil32(return_data.size) + ceil32(32 * mem[_872 + mem[_872]]) + 1
            mem[_872 + ceil32(return_data.size)] = _884
            require return_data.size >= _878 + (32 * _884) + 32
            mem[_872 + ceil32(return_data.size) + 32 len 32 * _884] = mem[_872 + _878 + 32 len 32 * _884]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1002 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1002] <= arg1:
                revert with 0, 'no profit'
            mem[mem[64]] = mem[_1002]
        return memory
          from mem[64]
           len 32
    if uint32(call.func_hash) >> 224 != unknown_0x75fcf991(?????):
        if uint32(call.func_hash) >> 224 != unknown_0x8980f11f(?????):
            require unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor1 != msg.sender:
                revert with 0, 'not owner'
            stor0[address(arg1)] = 1
        else:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not stor0[msg.sender]:
                revert with 0, 'not auth'
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require not msg.value
    require calldata.size - 4 >= 32
    mem[132] = stor2
    mem[164] = this.address
    mem[196] = arg1
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args stor2, this.address, arg1
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[ceil32(return_data.size) + 128] = 2
    mem[ceil32(return_data.size) + 160] = stor6
    mem[ceil32(return_data.size) + 192] = stor7
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 260] = 1
    mem[ceil32(return_data.size) + 292] = 160
    mem[ceil32(return_data.size) + 388] = 2
    idx = 0
    s = ceil32(return_data.size) + 420
    t = ceil32(return_data.size) + 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 324] = this.address
    mem[ceil32(return_data.size) + 356] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _353 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _357 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = _357
    require return_data.size >= _353 + (32 * _357) + 32
    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _357] = mem[ceil32(return_data.size) + _353 + 256 len 32 * _357]
    if 1 >= _357:
        revert with 0, 50
    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 288]
    mem[mem[64] + 36] = this.address
    require ext_code.size(stor12)
    call stor12.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _630 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _636 = mem[_630]
    mem[mem[64] + 4] = mem[_630]
    require ext_code.size(stor9)
    call stor9.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args _636
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _645 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _648 = mem[_645]
    mem[mem[64] + 68] = stor15
    mem[mem[64] + 100] = _648
    mem[mem[64] + 132] = this.address
    require ext_code.size(stor5)
    call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args stor16, stor14, stor15, _648, this.address
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _664 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_664] == mem[_664 + 12 len 20]
    require mem[_664 + 32] == mem[_664 + 44 len 20]
    mem[ceil32(return_data.size) + 160] = stor10
    mem[ceil32(return_data.size) + 192] = stor6
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _718 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _722 = mem[_718]
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _722
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = mem[64] + 196
    t = ceil32(return_data.size) + 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _722, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _870 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _876 = mem[_870]
    require mem[_870] <= test266151307()
    require _870 + mem[_870] + 31 < _870 + return_data.size
    _882 = mem[_870 + mem[_870]]
    if mem[_870 + mem[_870]] > test266151307():
        revert with 0, 65
    if _870 + ceil32(return_data.size) + ceil32(32 * mem[_870 + mem[_870]]) + 1 > test266151307() or ceil32(32 * mem[_870 + mem[_870]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _870 + ceil32(return_data.size) + ceil32(32 * mem[_870 + mem[_870]]) + 1
    mem[_870 + ceil32(return_data.size)] = _882
    require return_data.size >= _876 + (32 * _882) + 32
    mem[_870 + ceil32(return_data.size) + 32 len 32 * _882] = mem[_870 + _876 + 32 len 32 * _882]
    if 1 >= _882:
        revert with 0, 50
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1004 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1010 = mem[_1004]
    mem[mem[64] + 36] = stor6
    mem[mem[64] + 68] = _1010
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor17
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor11, stor6, _1010, 1, stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1044 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1050 = mem[_1044]
    if mem[_1044] <= arg1:
        revert with 0, 'no profit'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _1050
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _1050
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1059 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1059] == bool(mem[_1059])
    return _1050
}



}
