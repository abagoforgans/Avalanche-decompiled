contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b049070b(?) {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_937086f0(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.stake(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_01d1bd59(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.deposit(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_16339ecc(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.deposit(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_123d88bb(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_20ecf993(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9c7c9564(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ad7a5086(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4e44669d(?) {
    require calldata.size - 4 >= 96
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_37945a76(?) {
    require calldata.size - 4 >= 96
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0cbfce13(?) {
    require calldata.size - 4 >= 224
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 'joeAddLiquidity failed!'
}

function sub_54474336(?) {
    require calldata.size - 4 >= 224
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 'pangolinAddLiquidity failed!'
}

function sub_12517151(?) {
    require calldata.size - 4 >= 288
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 'joeAddLiquidity failed!'
}

function sub_aaf2f867(?) {
    require calldata.size - 4 >= 288
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 'pangolinAddLiquidity failed!'
}

function sub_b6197e37(?) {
    require calldata.size - 4 >= 224
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'joeRemoveLiquidity failed!'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'joeRemoveLiquidity failed!'
}

function sub_8ef4d683(?) {
    require calldata.size - 4 >= 224
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'pangolinRemoveLiquidity failed!'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'pangolinRemoveLiquidity failed!'
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e00a4c17(?) {
    require calldata.size - 4 >= 256
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4, arg5, address(arg6), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'joeRemoveLiquidity failed!'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'joeRemoveLiquidity failed!'
}

function sub_d6abad1a(?) {
    require calldata.size - 4 >= 256
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4, arg5, address(arg6), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'pangolinRemoveLiquidity failed!'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'pangolinRemoveLiquidity failed!'
}

function sub_0ac4decc(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'rPausable: paused'
    mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[164] = arg4
    mem[196] = arg5
    mem[132] = 128
    mem[228] = arg3.length
    mem[260 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 260] = 0
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), 128, address(arg4), arg5, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    mem[64] = (32 * mem[_8 + 96]) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if 0 == mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        revert with 0, 'swap failed'
}

function sub_1890a953(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'rPausable: paused'
    mem[96] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[164] = arg4
    mem[196] = arg5
    mem[132] = 128
    mem[228] = arg3.length
    mem[260 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 260] = 0
    require ext_code.size(arg1)
    call arg1.swapAVAXForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), 128, address(arg4), arg5, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    mem[64] = (32 * mem[_8 + 96]) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if 0 == mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        revert with 0, 'swap failed'
}

function sub_7369383e(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'rPausable: paused'
    mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[164] = arg4
    mem[196] = arg5
    mem[132] = 128
    mem[228] = arg3.length
    mem[260 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 260] = 0
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), 128, address(arg4), arg5, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    mem[64] = (32 * mem[_8 + 96]) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if 0 == mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        revert with 0, 'swap failed'
}

function sub_d74d4a6e(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'rPausable: paused'
    mem[96] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[164] = arg4
    mem[196] = arg5
    mem[132] = 128
    mem[228] = arg3.length
    mem[260 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 260] = 0
    require ext_code.size(arg1)
    call arg1.swapAVAXForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), 128, address(arg4), arg5, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    mem[64] = (32 * mem[_8 + 96]) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if 0 == mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        revert with 0, 'swap failed'
}



}
