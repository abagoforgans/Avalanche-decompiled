contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
array of address token;
array of uint256 tokenBalance;
mapping of uint8 tokenIndex;

function paused() payable {
    return bool(stor0)
}

function getTokenIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenIndex[address(arg1)] >= token.length:
        revert with 0, 'Out of range'
    if token[stor17[address(arg1)]] != arg1:
        revert with 0, 'Token does not exist'
    return tokenIndex[address(arg1)]
}

function getToken(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= token.length:
        revert with 0, 'Out of range'
    return token[arg1]
}

function owner() payable {
    return owner
}

function getTokenBalance(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= token.length:
        revert with 0, 'Index out of range'
    if arg1 >= tokenBalance.length:
        revert with 'NH{q', 50
    return tokenBalance[arg1]
}

function _fallback() payable {
    revert
}

function swapStorage() payable {
    return stor2, stor3, stor4, stor5, stor6, stor7, stor8, stor9, stor10, stor11
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function getA() payable {
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xb0a14cfc with:
         gas gas_remaining wei
        args 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getAPrecise() payable {
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xc9b64dcb with:
         gas gas_remaining wei
        args 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getVirtualPrice() payable {
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x71906c2c with:
         gas gas_remaining wei
        args 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getAdminBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x7d048160 with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function stopRampA() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xf14e211e with:
         gas gas_remaining wei
        args 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
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

function getDepositTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xe8c47a54 with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function calculateCurrentWithdrawFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x968e5594 with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function withdrawAdminFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x24c5c751 with:
         gas gas_remaining wei
        args 2, owner
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAdminFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.'pFrv' with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSwapFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x467e186c with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDefaultDepositFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xd2a39487 with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDefaultWithdrawFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x8ab7697e with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function rampA(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x58fdd79b with:
         gas gas_remaining wei
        args 2, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x4386c7ce with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.'K#`<' with:
         gas gas_remaining wei
        args Mask(224, 0, 'K#`<'), 2, arg1 << 248, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function calculateRemoveLiquidityOneToken(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xe4a9a0da with:
         gas gas_remaining wei
        args 0, 2, address(arg1), arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0]
}

function updateUserWithdrawFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor11 != msg.sender:
        revert with 0, 'Only callable by pool token'
    require ext_code.size(0x92c5b5b66988e6b8931a8cd3faa418b42003df2f)
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xe9252d46 with:
         gas gas_remaining wei
        args 2, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor0:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg4:
        revert with 0, 'Deadline not met'
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xe7a4db81 with:
         gas gas_remaining wei
        args 0, 2, arg1, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
    return delegate.return_data[0]
}

function swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor0:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg5:
        revert with 0, 'Deadline not met'
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xa5397b22 with:
         gas gas_remaining wei
        args 0, 2, arg1 << 248, arg2 << 248, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
    return delegate.return_data[0]
}

function calculateTokenAmount(address arg1, uint256[] arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x5e58579c with:
         gas gas_remaining wei
        args 0, 2, address(arg1), 128, arg3, arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor0:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Deadline not met'
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x40370edf with:
         gas gas_remaining wei
        args 0, 2, 96, arg2, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
    return delegate.return_data[0]
}

function removeLiquidityImbalance(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor0:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Deadline not met'
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x41b91c26 with:
         gas gas_remaining wei
        args 0, 2, 96, arg2, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
    return delegate.return_data[0]
}

function calculateRemoveLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[96] = 0xf967a81f00000000000000000000000000000000000000000000000000000000
    mem[100] = 2
    mem[132] = arg1
    mem[164] = arg2
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0xf967a81f with:
         gas gas_remaining wei
        args 2, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require mem[96 len 4], 0 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require (32 * _5) + _4 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function removeLiquidity(uint256 arg1, uint256[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg3 < block.timestamp:
        revert with 0, 'Deadline not met'
    mem[96] = 0x73fd6b3e00000000000000000000000000000000000000000000000000000000
    mem[100] = 2
    mem[132] = arg1
    mem[164] = 96
    mem[196] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[228 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 228] = 0
    delegate 0x92c5b5b66988e6b8931a8cd3faa418b42003df2f.0x73fd6b3e with:
         gas gas_remaining wei
        args 0, 2, arg1, 96, arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require mem[96 len 4], 0 + 127 < return_data.size + 96
    _9 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require (32 * _9) + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _9)] = mem[_8 + 128 len ceil32(32 * _9)]
    stor1 = 1
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _9
    mem[mem[64] + 64 len 32 * _9] = mem[ceil32(return_data.size) + 128 len 32 * _9]
    return Array(len=_9, data=mem[mem[64] + 64 len 32 * _9])
}



}
