contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 paused;
uint256 stor151;
uint256 stor351;
uint256 stor352;
uint256 stor353;
uint256 stor354;
uint256 stor355;
uint256 stor356;
address stor357;
uint256 token;
address sub_0526930cAddress;
array of uint256 tokenBalance;

function sub_0526930c(?) {
    return sub_0526930cAddress
}

function getToken() {
    return token
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function getTokenBalance(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 2:
        revert with 0, 'Swap: Index out of range'
    if arg1 >= tokenBalance.length:
        revert with 0, 50
    return tokenBalance[arg1]
}

function _fallback() payable {
    revert
}

function swapStorage() {
    return stor351, stor352, stor353, stor354, stor355, stor356, stor357, token, sub_0526930cAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getA() {
    require ext_code.size(0xb421304b547993f445c1000367ff3e28ab49f4)
    delegate 0xb421304b547993f445c1000367ff3e28ab49f4.0xb0a14cfc with:
         gas gas_remaining wei
        args 351
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getAPrecise() {
    require ext_code.size(0xb421304b547993f445c1000367ff3e28ab49f4)
    delegate 0xb421304b547993f445c1000367ff3e28ab49f4.0xc9b64dcb with:
         gas gas_remaining wei
        args 351
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getDebt() {
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0xaa0ce186 with:
         gas gas_remaining wei
        args 351
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getVirtualPrice() {
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x71906c2c with:
         gas gas_remaining wei
        args 351
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function stopRampA() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb421304b547993f445c1000367ff3e28ab49f4)
    delegate 0xb421304b547993f445c1000367ff3e28ab49f4.0xf14e211e with:
         gas gas_remaining wei
        args 351
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getAdminBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x7d048160 with:
         gas gas_remaining wei
        args 351, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function setSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x467e186c with:
         gas gas_remaining wei
        args 351, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAdminFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x70467276 with:
         gas gas_remaining wei
        args 351, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function rampA(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb421304b547993f445c1000367ff3e28ab49f4)
    delegate 0xb421304b547993f445c1000367ff3e28ab49f4.0x58fdd79b with:
         gas gas_remaining wei
        args 351, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0xe0692742 with:
         gas gas_remaining wei
        args 351, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function withdrawAdminFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x24c5c751 with:
         gas gas_remaining wei
        args 351, owner
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
}

function calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x4b23603c with:
         gas gas_remaining wei
        args 0, 351, arg1 << 248, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg4:
        revert with 0, 'Swap: Deadline not met'
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0xe7a4db81 with:
         gas gas_remaining wei
        args 0, 351, arg1, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function calculateTokenAmount(uint256[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x834b4910 with:
         gas gas_remaining wei
        args 0, 351, 96, arg2, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg5:
        revert with 0, 'Swap: Deadline not met'
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0xa5397b22 with:
         gas gas_remaining wei
        args 0, 351, arg1 << 248, arg2 << 248, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Swap: Deadline not met'
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x40370edf with:
         gas gas_remaining wei
        args 0, 351, 96, arg2, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function removeLiquidityImbalance(uint256[] arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Swap: Deadline not met'
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x41b91c26 with:
         gas gas_remaining wei
        args 0, 351, 96, arg2, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function calculateRemoveLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0x70703e4a00000000000000000000000000000000000000000000000000000000
    mem[100] = 351
    mem[132] = arg1
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x70703e4a with:
         gas gas_remaining wei
        args 351, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], 0 + 127
    _5 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function removeLiquidity(uint256 arg1, uint256[] arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if arg3 < block.timestamp:
        revert with 0, 'Swap: Deadline not met'
    mem[96] = 0x73fd6b3e00000000000000000000000000000000000000000000000000000000
    mem[100] = 351
    mem[132] = arg1
    mem[164] = 96
    mem[196] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[228 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 228] = 0
    require ext_code.size(0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef)
    delegate 0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef.0x73fd6b3e with:
         gas gas_remaining wei
        args 0, 351, arg1, 96, arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], 0 + 127
    _9 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + (32 * _9) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _9] = mem[_8 + 128 len 32 * _9]
    stor151 = 1
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _9
    mem[mem[64] + 64 len 32 * _9] = mem[ceil32(return_data.size) + 128 len 32 * _9]
    return Array(len=_9, data=mem[mem[64] + 64 len 32 * _9])
}

function sub_303e9bea(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg8 == address(arg8)
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    paused = 0
    stor151 = 1
    if not address(arg8):
        revert with 0, 'Swap: lpTokenTargetAddress can not be zero'
    if not address(arg1):
        revert with 0, 'Swap: _gAvax can not be zero'
    if arg5 >= 10^6:
        revert with 0, 'Swap: _a exceeds maximum'
    if arg6 >= 100 * 10^6:
        revert with 0, 'Swap: _fee exceeds maximum'
    if arg7 >= 10^10:
        revert with 0, 'Swap: _adminFee exceeds maximum'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, arg8) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 166] = arg3.length
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 198 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    if ceil32(arg3.length) <= arg3.length:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 134] = ceil32(arg3.length) + 96
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 198] = arg4.length
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 230 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, 64) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 230] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(string arg1, string arg2) with:
             gas gas_remaining wei
            args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, 64) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 96
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 198] = 0
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 134] = ceil32(arg3.length) + 96
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 198] = arg4.length
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 230 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, 64) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 230] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(string arg1, string arg2) with:
             gas gas_remaining wei
            args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 230 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Swap: could not init lpToken clone'
    stor357 = address(create.new_address)
    sub_0526930cAddress = address(arg1)
    token = arg2
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 130 len 64] = call.data[calldata.size len 64]
    tokenBalance.length = 2
    s = 0
    idx = ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 130
    while ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 194 > idx:
        tokenBalance[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while tokenBalance.length > idx:
        tokenBalance[idx] = 0
        idx = idx + 1
        continue 
    if arg5 and 100 > -1 / arg5:
        revert with 0, 17
    stor351 = 100 * arg5
    stor352 = 100 * arg5
    stor355 = arg6
    stor356 = arg7
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    return address(create.new_address)
}



}
