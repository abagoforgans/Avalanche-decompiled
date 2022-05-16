contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address sub_b328f1ecAddress;
address timeAddress;
address sub_37f6f658Address;
address sub_926100afAddress;
address stakingAddress;
address traderJoeRouterAddress;

function sub_37f6f658(?) payable {
    return sub_37f6f658Address
}

function TraderJoeRouter() payable {
    return traderJoeRouterAddress
}

function sub_926100af(?) payable {
    return sub_926100afAddress
}

function sub_b328f1ec(?) payable {
    return sub_b328f1ecAddress
}

function Staking() payable {
    return stakingAddress
}

function Time() payable {
    return timeAddress
}

function _fallback() payable {
    revert
}

function swapAndStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b328f1ecAddress)
    call sub_b328f1ecAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = stor0
    mem[160] = stor1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(traderJoeRouterAddress)
    staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _43 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _46 = mem[_43 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_43 + 192])] = mem[_43 + 224 len floor32(mem[_43 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _72 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _46) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _46) + ceil32(return_data.size) + 228] = arg1
    mem[(32 * _46) + ceil32(return_data.size) + 260] = 99 * _72 / 100
    mem[(32 * _46) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _46) + ceil32(return_data.size) + 356] = block.timestamp + 60
    mem[(32 * _46) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _46) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _46) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(traderJoeRouterAddress)
    call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 99 * _72 / 100, Array(len=2, data=mem[(32 * _46) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _46) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _46) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[(32 * _46) + ceil32(return_data.size) + mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * _46) + ceil32(return_data.size) + mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    require ext_code.size(timeAddress)
    call timeAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_926100afAddress)
    call sub_926100afAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0a5d48a9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_37f6f658Address)
    call sub_37f6f658Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingAddress)
    call stakingAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = stor1
    mem[160] = stor0
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(traderJoeRouterAddress)
    staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _46 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _49 = mem[_46 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_46 + 192])] = mem[_46 + 224 len floor32(mem[_46 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _72 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _49) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _49) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[(32 * _49) + ceil32(return_data.size) + 260] = 99 * _72 / 100
    mem[(32 * _49) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _49) + ceil32(return_data.size) + 356] = block.timestamp + 60
    mem[(32 * _49) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _49) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _49) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(traderJoeRouterAddress)
    call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 99 * _72 / 100, Array(len=2, data=mem[(32 * _49) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _49) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _49) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _49) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _49) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _49) + ceil32(return_data.size) + mem[(32 * _49) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _49) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _49) + ceil32(return_data.size) + mem[(32 * _49) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
    require ext_code.size(sub_b328f1ecAddress)
    staticcall sub_b328f1ecAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b328f1ecAddress)
    call sub_b328f1ecAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
