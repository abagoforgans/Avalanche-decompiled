contract main {




// =====================  Runtime code  =====================


address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address thorTokenAddress;
address sub_148ac586Address;
address sub_c1330314Address;

function sub_148ac586(?) payable {
    return sub_148ac586Address
}

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function thorToken() payable {
    return thorTokenAddress
}

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function sub_c1330314(?) payable {
    return sub_c1330314Address
}

function _fallback() payable {
    revert
}

function sub_d3a809b7(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_c1330314Address)
    call sub_c1330314Address.cashoutFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 100:
        revert with 0, 'Not Cool bro :('
    mem[ceil32(return_data.size) + 164] = 6
    mem[ceil32(return_data.size) + 196] = 0x5275676765640000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_148ac586Address)
    call sub_148ac586Address.createNode(address arg1, string arg2) with:
         gas gas_remaining wei
        args this.address, 64, 6, 0x5275676765640000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_148ac586Address)
    call sub_148ac586Address._changeClaimTime(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(sub_148ac586Address)
    call sub_148ac586Address._changeRewardPerNode(uint256 arg1) with:
         gas gas_remaining wei
        args (10^18 * arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_148ac586Address)
    call sub_148ac586Address._distributeRewards() with:
         gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_c1330314Address)
    call sub_c1330314Address.cashoutAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(thorTokenAddress)
    staticcall thorTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 128] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    require ext_code.size(thorTokenAddress)
    call thorTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    idx = 0
    s = (8 * ceil32(return_data.size)) + 388
    t = (4 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
