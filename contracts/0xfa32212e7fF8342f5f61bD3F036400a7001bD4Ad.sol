contract main {




// =====================  Runtime code  =====================


const BURN_ADDRESS = 57005


address owner;
address uniswapV2RouterAddress;
uint256 totalVested;
address toTokenAddress;
address sub_aca8729bAddress;
address sub_4dc32effAddress;
address sub_5106af51Address;

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function totalVested() payable {
    return totalVested
}

function sub_4dc32eff(?) payable {
    return sub_4dc32effAddress
}

function sub_5106af51(?) payable {
    return sub_5106af51Address
}

function owner() payable {
    return owner
}

function ToToken() payable {
    return toTokenAddress
}

function sub_aca8729b(?) payable {
    return sub_aca8729bAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_001c640a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    toTokenAddress = arg1
}

function sub_8b169d2f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5106af51Address = arg1
}

function sub_a171702e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_aca8729bAddress = arg1
}

function updateSwapRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4dc32effAddress = arg1
    uniswapV2RouterAddress = sub_4dc32effAddress
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a2f5bf77(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_aca8729bAddress)
    staticcall sub_aca8729bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_aca8729bAddress)
    call sub_aca8729bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, sub_5106af51Address, block.timestamp + 400, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
