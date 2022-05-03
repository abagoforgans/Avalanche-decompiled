contract main {




// =====================  Runtime code  =====================


const getAddress = this.address


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'wut'
    stor7 = arg1
}

function withDrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'wut'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b96b80e9(?) {
    if stor7 != msg.sender:
        revert with 0, 'wut'
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args stor7, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor1.burn(address arg1) with:
         gas gas_remaining wei
        args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_b5a1497c(?) payable {
    if stor7 != msg.sender:
        revert with 0, 'wut'
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = stor5
    mem[132] = -1
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, -1
    mem[96] = ext_call.return_data[0]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor2
    mem[ceil32(return_data.size) + 160] = stor3
    mem[ceil32(return_data.size) + 196] = this.address
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 388
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    call stor5.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _37 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _38 = mem[_37]
    require mem[_37] <= test266151307()
    require _37 + mem[_37] + 31 < _37 + return_data.size
    _39 = mem[_37 + mem[_37]]
    if mem[_37 + mem[_37]] > test266151307():
        revert with 0, 65
    if _37 + ceil32(return_data.size) + ceil32(32 * mem[_37 + mem[_37]]) + 1 > test266151307() or ceil32(32 * mem[_37 + mem[_37]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _37 + ceil32(return_data.size) + ceil32(32 * mem[_37 + mem[_37]]) + 1
    mem[_37 + ceil32(return_data.size)] = _39
    require (32 * _39) + _38 + 32 <= return_data.size
    mem[_37 + ceil32(return_data.size) + 32 len ceil32(32 * _39)] = mem[_37 + _38 + 32 len ceil32(32 * _39)]
    mem[mem[64] + 4] = this.address
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _56 = mem[_55]
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = _56
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, _56
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_59] == bool(mem[_59])
    require ext_code.size(stor0)
    call stor0.harvest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e42ae6a2(?) {
    if stor7 != msg.sender:
        revert with 0, 'wut'
    mem[100] = stor7
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = stor7
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args stor7, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = stor6
    mem[(2 * ceil32(return_data.size)) + 132] = -1
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, -1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = stor4
    mem[(4 * ceil32(return_data.size)) + 160] = stor2
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 228] = 0
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 388
    t = (4 * ceil32(return_data.size)) + 128
    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
    call stor6.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _40 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _41 = mem[_40]
    require mem[_40] <= test266151307()
    require _40 + mem[_40] + 31 < _40 + return_data.size
    _42 = mem[_40 + mem[_40]]
    if mem[_40 + mem[_40]] > test266151307():
        revert with 0, 65
    if _40 + ceil32(return_data.size) + ceil32(32 * mem[_40 + mem[_40]]) + 1 > test266151307() or ceil32(32 * mem[_40 + mem[_40]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _40 + ceil32(return_data.size) + ceil32(32 * mem[_40 + mem[_40]]) + 1
    mem[_40 + ceil32(return_data.size)] = _42
    require (32 * _42) + _41 + 32 <= return_data.size
    mem[_40 + ceil32(return_data.size) + 32 len ceil32(32 * _42)] = mem[_40 + _41 + 32 len ceil32(32 * _42)]
    mem[mem[64] + 4] = this.address
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_55]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_283dc244(?) payable {
    if stor7 != msg.sender:
        revert with 0, 'wut'
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = stor5
    mem[132] = -1
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, -1
    mem[96] = ext_call.return_data[0]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor5
    mem[ceil32(return_data.size) + 132] = -1
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, -1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor2
    mem[(2 * ceil32(return_data.size)) + 160] = stor3
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
    mem[(4 * ceil32(return_data.size)) + 228] = 0
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 388
    t = (2 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _46 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _47 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _47
    require (32 * _47) + _46 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _47)] = mem[(4 * ceil32(return_data.size)) + _46 + 224 len ceil32(32 * _47)]
    mem[mem[64] + 4] = this.address
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _67 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _68 = mem[_67]
    mem[mem[64] + 4] = this.address
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor2, stor3, _68, mem[_71], 0, 0, stor7, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
