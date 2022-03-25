contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address[] arg1, uint8[] arg2, string arg3, string arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8)
#
address owner;
uint8 paused;
uint256 stor151;
uint256 stor201;
uint256 stor202;
uint256 stor203;
uint256 stor204;
uint256 stor205;
uint256 stor206;
uint256 stor207;
address stor208;
array of address token;
array of uint256 tokenBalance;
mapping of uint8 tokenIndex;

function paused() payable {
    return bool(paused)
}

function getTokenIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    if tokenIndex[address(arg1)] >= token.length:
        revert with 0, 'Out of range'
    if token[stor215[address(arg1)]] != arg1:
        revert with 0, 'Token does not exist'
    return tokenIndex[address(arg1)]
}

function getToken(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= token.length:
        revert with 0, 'Out of range'
    return token[arg1]
}

function owner() payable {
    return owner
}

function getTokenBalance(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= token.length:
        revert with 0, 'Index out of range'
    require arg1 < tokenBalance.length
    return tokenBalance[arg1]
}

function _fallback() payable {
    revert
}

function swapStorage() payable {
    return stor201, stor202, stor203, stor204, stor205, stor206, stor207, stor208
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function getA() payable {
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xb0a14cfc with:
         gas gas_remaining wei
        args 201
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[20002 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAPrecise() payable {
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xc9b64dcb with:
         gas gas_remaining wei
        args 201
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getVirtualPrice() payable {
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x71906c2c with:
         gas gas_remaining wei
        args 201
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function stopRampA() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xf14e211e with:
         gas gas_remaining wei
        args 201
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAdminFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x24c5c751 with:
         gas gas_remaining wei
        args 201, owner
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAdminBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x7d048160 with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getDepositTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xe8c47a54 with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function setAdminFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.'pFrv' with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSwapFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x467e186c with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculateCurrentWithdrawFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x968e5594 with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function setDefaultWithdrawFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x8ab7697e with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function rampA(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x58fdd79b with:
         gas gas_remaining wei
        args 201, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateUserWithdrawFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor208 != msg.sender:
        revert with 0, 'Only callable by pool token'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xe9252d46 with:
         gas gas_remaining wei
        args 201, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.'K#`<' with:
         gas gas_remaining wei
        args Mask(224, 0, 'K#`<'), 201, arg1 << 248, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function calculateRemoveLiquidityOneToken(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xe4a9a0da with:
         gas gas_remaining wei
        args 0, 201, address(arg1), arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0]
}

function calculateTokenAmount(address arg1, uint256[] arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x5e58579c with:
         gas gas_remaining wei
        args 0, 201, address(arg1), 128, arg3, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg4:
        revert with 0, 'Deadline not met'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xe7a4db81 with:
         gas gas_remaining wei
        args 0, 201, arg1, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg5:
        revert with 0, 'Deadline not met'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xa5397b22 with:
         gas gas_remaining wei
        args 0, 201, arg1 << 248, arg2 << 248, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Deadline not met'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x40370edf with:
         gas gas_remaining wei
        args 0, 201, 96, arg2, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function removeLiquidityImbalance(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Deadline not met'
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x41b91c26 with:
         gas gas_remaining wei
        args 0, 201, 96, arg2, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function calculateRemoveLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0xf967a81f00000000000000000000000000000000000000000000000000000000
    mem[100] = 201
    mem[132] = arg1
    mem[164] = arg2
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0xf967a81f with:
         gas gas_remaining wei
        args 201, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function removeLiquidity(uint256 arg1, uint256[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if arg3 < block.timestamp:
        revert with 0, 'Deadline not met'
    mem[96] = 0x73fd6b3e00000000000000000000000000000000000000000000000000000000
    mem[100] = 201
    mem[132] = arg1
    mem[164] = 96
    mem[196] = arg2.length
    mem[228 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 228] = 0
    require ext_code.size(0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16)
    delegate 0x1274b6b06450fdbbb6f3f2885c2d56506fa1c16.0x73fd6b3e with:
         gas gas_remaining wei
        args 0, 201, arg1, 96, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    stor151 = 1
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _11) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _11) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _11) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}



}
