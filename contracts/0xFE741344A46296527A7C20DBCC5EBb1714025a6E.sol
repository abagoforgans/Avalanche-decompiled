contract main {




// =====================  Runtime code  =====================


address owner;
address WAVAXAddress;
address joeRouterAddress;
address sub_5460ebd5Address;

function sub_1abf019e(?) {
    return owner
}

function sub_5460ebd5(?) {
    return sub_5460ebd5Address
}

function joeRouter() {
    return joeRouterAddress
}

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function fund() payable {
  stop
}

function _fallback() payable {
  stop
}

function sendViaCall(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if owner != msg.sender:
        revert with 0, 'Only owner can withdraw funds'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'balance is low'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b1b47a2c(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = address(arg1)
    require ext_code.size(address(arg2))
    call address(arg2).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5460ebd5Address)
    call sub_5460ebd5Address.closeFactorMantissa() with:
         gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg7)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
    mem[(2 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _38 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _39 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 192]) + 224
    mem[(4 * ceil32(return_data.size)) + 192] = _39
    require return_data.size >= _38 + (32 * _39) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _39] = mem[(2 * ceil32(return_data.size)) + _38 + 224 len 32 * _39]
    if 0 >= _39:
        revert with 0, 50
    _56 = mem[(4 * ceil32(return_data.size)) + 224]
    _57 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    mem[mem[64] + 64] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    mem[mem[64] + 96] = address(arg2)
    mem[mem[64] + 128] = address(arg3)
    mem[mem[64] + 160] = address(arg4)
    mem[mem[64] + 192] = address(arg5)
    mem[mem[64] + 224] = address(arg7)
    _58 = mem[64]
    mem[mem[64]] = 224
    mem[64] = mem[64] + 256
    mem[_57 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
    mem[_57 + 260] = this.address
    mem[_57 + 292] = address(arg6)
    mem[_57 + 324] = _56
    mem[_57 + 356] = 128
    _59 = mem[_58]
    mem[_57 + 388] = mem[_58]
    mem[_57 + 420 len ceil32(_59)] = mem[_58 + 32 len ceil32(_59)]
    if ceil32(_59) > _59:
        mem[_57 + _59 + 420] = 0
    require ext_code.size(address(arg6))
    call address(arg6).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg6), _56, 128, mem[_57 + 388 len ceil32(_59) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = arg3
    mem[160] = arg4
    emit 0x24d0dbdc: address(arg2), arg3, arg4
    mem[100] = msg.sender
    require ext_code.size(sub_5460ebd5Address)
    staticcall sub_5460ebd5Address.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    require arg5.length >= 224
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    require cd[(arg5 + 228)] == address(cd[(arg5 + 228)])
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(cd[(arg5 + 228)]))
    staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Contract has no balance of tokenFrom'
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(cd[(arg5 + 228)]))
    staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = joeRouterAddress
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(cd[(arg5 + 228)]))
    call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args joeRouterAddress, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = address(cd[(arg5 + 228)])
    mem[(6 * ceil32(return_data.size)) + 160] = address(cd[(arg5 + 132)])
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 228] = 1
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _99 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
    _100 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
    mem[(7 * ceil32(return_data.size)) + 192] = _100
    require return_data.size >= _99 + (32 * _100) + 32
    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _100] = mem[(6 * ceil32(return_data.size)) + _99 + 224 len 32 * _100]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 132)]))
    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _192 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_192] <= 0:
        revert with 0, 'Didn't receive token'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 132)]))
    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _198 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _199 = mem[_198]
    mem[mem[64] + 32] = address(cd[(arg5 + 132)])
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = _199
    emit Swapped(address(cd[(arg5 + 228)]), address(cd[(arg5 + 132)]), ext_call.return_data[0], _199);
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 132)]))
    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _204 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_204]
    mem[mem[64] + 4] = address(cd[(arg5 + 100)])
    mem[mem[64] + 36] = _205
    require ext_code.size(address(cd[(arg5 + 132)]))
    call address(cd[(arg5 + 132)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 100)]), _205
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _208 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_208] == bool(mem[_208])
    mem[mem[64] + 68] = address(cd[(arg5 + 164)])
    require ext_code.size(address(cd[(arg5 + 100)]))
    call address(cd[(arg5 + 100)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 36)]), cd[(arg5 + 68)], address(cd[(arg5 + 164)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 32] = address(cd[(arg5 + 100)])
    mem[mem[64] + 64] = cd[(arg5 + 68)]
    emit Liquidated(address(cd[(arg5 + 36)]), address(cd[(arg5 + 100)]), cd[(arg5 + 68)]);
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 164)]))
    staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _218 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(address(cd[(arg5 + 164)]))
    call address(cd[(arg5 + 164)]).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_218]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _226 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_226] <= 0:
        revert with 0, 'Contract has no balance of tokenFrom'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _232 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _233 = mem[_232]
    mem[mem[64] + 4] = joeRouterAddress
    mem[mem[64] + 36] = _233
    require ext_code.size(address(cd[(arg5 + 196)]))
    call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args joeRouterAddress, _233
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _236 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_236] == bool(mem[_236])
    _238 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_238]:
        revert with 0, 50
    mem[_238 + 32] = address(cd[(arg5 + 196)])
    if 1 >= mem[_238]:
        revert with 0, 50
    mem[_238 + 64] = address(cd[(arg5 + 228)])
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[_238 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_238 + 100] = _233
    mem[_238 + 132] = 1
    mem[_238 + 164] = 160
    mem[_238 + 260] = mem[_238]
    idx = 0
    s = _238 + 32
    t = _238 + 292
    while idx < mem[_238]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + 196] = this.address
    mem[_238 + 228] = block.timestamp + 60
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _238 + (32 * mem[_238]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _278 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _279 = mem[_278]
    require mem[_278] <= test266151307()
    require _278 + mem[_278] + 31 < _278 + return_data.size
    _280 = mem[_278 + mem[_278]]
    if mem[_278 + mem[_278]] > test266151307():
        revert with 0, 65
    if _278 + ceil32(return_data.size) + (32 * mem[_278 + mem[_278]]) + 32 > test266151307() or (32 * mem[_278 + mem[_278]]) + 32 < 0:
        revert with 0, 65
    mem[64] = _278 + ceil32(return_data.size) + (32 * mem[_278 + mem[_278]]) + 32
    mem[_278 + ceil32(return_data.size)] = _280
    require return_data.size >= _279 + (32 * _280) + 32
    mem[_278 + ceil32(return_data.size) + 32 len 32 * _280] = mem[_278 + _279 + 32 len 32 * _280]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 228)]))
    staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _312 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_312] <= 0:
        revert with 0, 'Didn't receive token'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 228)]))
    staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _318 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _319 = mem[_318]
    mem[mem[64] + 64] = _233
    mem[mem[64] + 96] = _319
    emit Swapped(address(cd[(arg5 + 196)]), address(cd[(arg5 + 228)]), _233, _319);
    if arg3 > !arg4:
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _324 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_324] == bool(mem[_324])
    if arg3 > !arg4:
        revert with 0, 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 228)]))
    staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _328 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _329 = mem[_328]
    if mem[_328] < arg3 + arg4:
        revert with 0, 17
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _329 - arg3 - arg4
    require ext_code.size(address(cd[(arg5 + 228)]))
    call address(cd[(arg5 + 228)]).0xa9059cbb with:
         gas gas_remaining wei
        args owner, _329 - arg3 - arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _332 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_332] == bool(mem[_332])
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
