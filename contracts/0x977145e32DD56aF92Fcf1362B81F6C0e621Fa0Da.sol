contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address uniswapRouterAddress;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function uniswapRouter() {
    return uniswapRouterAddress
}

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function add(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    stor1[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function remove(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    stor1[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function withdrawEth() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdrawEth failed'
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_57745609(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    uniswapRouterAddress = arg5
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, arg1, arg2, 160, owner, arg4, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a220e1bc(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    uniswapRouterAddress = arg5
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg4 wei
         gas gas_remaining wei
        args 0, arg1, 128, owner, arg3, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d93985ea(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    uniswapRouterAddress = arg5
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, arg1, arg2, 160, owner, arg4, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_7a7989ae(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    uniswapRouterAddress = arg5
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[196] = owner
    mem[228] = arg4
    mem[164] = 160
    mem[260] = arg3.length
    mem[292 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 292] = 0
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, 160, owner, arg4, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
}

function sub_b7c15170(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    uniswapRouterAddress = arg5
    mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[196] = owner
    mem[228] = arg4
    mem[164] = 160
    mem[260] = arg3.length
    mem[292 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 292] = 0
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, 160, owner, arg4, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
}



}
