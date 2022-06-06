contract main {




// =====================  Runtime code  =====================


address owner;
address mimAddress;
address liquidityWalletAddress;
address tokenAddress;
address dividendTrackerAddress;
address uniswapV2RouterAddress;
mapping of uint8 stor6;

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function dividendTracker() payable {
    return dividendTrackerAddress
}

function owner() payable {
    return owner
}

function tokenAddress() payable {
    return tokenAddress
}

function mim() payable {
    return mimAddress
}

function liquidityWallet() payable {
    return liquidityWalletAddress
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function setLiquidityWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor6[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This address is not allowed to interact with the contract'
    liquidityWalletAddress = arg1
}

function updateUniswapV2Router(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor6[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This address is not allowed to interact with the contract'
    uniswapV2RouterAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_efce6237(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor6[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This address is not allowed to interact with the contract'
    call mimAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addLiquidity(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor6[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This address is not allowed to interact with the contract'
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call mimAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args tokenAddress, mimAddress, arg1, arg2, 0, 0, liquidityWalletAddress, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function sub_61fb0854(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor6[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This address is not allowed to interact with the contract'
    mem[128] = tokenAddress
    mem[160] = mimAddress
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, arg1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    idx = 0
    s = ceil32(return_data.size) + 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeDividends(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor6[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This address is not allowed to interact with the contract'
    mem[100] = dividendTrackerAddress
    mem[132] = arg2
    call mimAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args dividendTrackerAddress, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0x3243c79100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg2
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.distributeDividends(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if ext_call.success:
        emit SendDividends(arg1, arg2);
    else:
        if return_data.size <= 3:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(msg.sender) >> 224 != Error(string arg1):
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size < 68:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with ext_call.return_data[0 len return_data.size]
        if 0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96] + 32 > return_data.size - 4:
            revert with ext_call.return_data[0 len return_data.size]
        if floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96] + 31) + 97 < 96 or ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96] + 31) + 97 > test266151307():
            revert with 0, 65
        if not ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96:
            revert with ext_call.return_data[0 len return_data.size]
}



}
