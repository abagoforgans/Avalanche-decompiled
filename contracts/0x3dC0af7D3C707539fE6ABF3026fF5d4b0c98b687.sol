contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address[] arg1, uint8[] arg2, string arg3, string arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, address arg9)
#
const MIN_RAMP_TIME = (24 * 3600)

const MAX_A = 10^6

const MAX_SWAP_FEE = 100 * 10^6

const MAX_A_CHANGE = 10

const MAX_WITHDRAW_FEE = 100 * 10^6

const MAX_ADMIN_FEE = 10^10


uint8 stor0; offset 160
address owner;
uint256 stor1;
array of struct token;
address lpTokenAddress;
array of struct stor5;
array of struct tokenBalance;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;
address feeDistributorAddress;
address feeControllerAddress;
mapping of uint8 tokenIndexes;

function tokenIndexes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIndexes[arg1]
}

function feeDistributor() payable {
    return feeDistributorAddress
}

function paused() payable {
    return bool(stor0)
}

function getTokenIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenIndexes[address(arg1)] >= token.length:
        revert with 0, 50
    if token[stor18[address(arg1)]].field_0 != arg1:
        revert with 0, 'tokenNotFound'
    return tokenIndexes[address(arg1)]
}

function feeController() payable {
    return feeControllerAddress
}

function getLpToken() payable {
    return lpTokenAddress
}

function getToken(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= token.length:
        revert with 0, 50
    return token[arg1].field_0
}

function owner() payable {
    return owner
}

function getTokenBalance(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenBalance.length:
        revert with 0, 50
    return tokenBalance[arg1].field_0
}

function getNumberOfTokens() payable {
    return token.length
}

function _fallback() payable {
    revert
}

function swapStorage() payable {
    return lpTokenAddress, stor7, stor8, stor9, stor10, stor11, stor12, stor13
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

function setFeeController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'zeroAddress'
    feeControllerAddress = arg1
    emit FeeControllerChanged(arg1);
}

function setFeeDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'zeroAddress'
    feeDistributorAddress = arg1
    emit FeeDistributorChanged(arg1);
}

function getA() payable {
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0x329b20ed with:
         gas gas_remaining wei
        args 3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getAPrecise() payable {
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xda2a54b1 with:
         gas gas_remaining wei
        args 3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getVirtualPrice() payable {
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xa518512c with:
         gas gas_remaining wei
        args 3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100 * 10^6:
        revert with 0, '> maxSwapFee'
    if arg2 > 10^10:
        revert with 0, '> maxAdminFee'
    if arg3 > 100 * 10^6:
        revert with 0, '> maxWithdrawFee'
    stor8 = arg2
    stor7 = arg1
    stor13 = arg3
    emit NewFee(arg1, arg2, arg3);
}

function getAdminBalance(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xb02058c4 with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function updateUserWithdrawFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if lpTokenAddress != msg.sender:
        revert with 0, '!lpToken'
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0x699638a5 with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xe7dc57ca with:
         gas gas_remaining wei
        args 0, 3, arg1 << 248, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function calculateRemoveLiquidityOneToken(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0x2a4f48ef with:
         gas gas_remaining wei
        args 0, 3, address(arg1), arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getTokenPrecisionMultipliers() payable {
    if stor5.length:
        mem[128] = uint256(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = uint256(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    mem[(32 * stor5.length) + 192 len 32 * stor5.length] = mem[128 len 32 * stor5.length]
    return memory
      from (32 * stor5.length) + 128
       len (96 * stor5.length) + 64
}

function stopRampA() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= stor12:
        revert with 0, 'alreadyStopped'
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xda2a54b1 with:
         gas gas_remaining wei
        args 3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor9 = delegate.return_data[0]
    stor10 = delegate.return_data[0]
    stor11 = block.timestamp
    stor12 = block.timestamp
    emit StopRampA(delegate.return_data[0], block.timestamp);
}

function getTokenBalances() payable {
    if tokenBalance.length:
        mem[128] = uint256(tokenBalance.field_0)
        idx = 128
        s = 0
        while (32 * tokenBalance.length) + 96 > idx:
            mem[idx + 32] = tokenBalance[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=tokenBalance.length, data=mem[128 len 32 * tokenBalance.length])
    mem[(32 * tokenBalance.length) + 128] = 32
    mem[(32 * tokenBalance.length) + 160] = tokenBalance.length
    mem[(32 * tokenBalance.length) + 192 len 32 * tokenBalance.length] = mem[128 len 32 * tokenBalance.length]
    return memory
      from (32 * tokenBalance.length) + 128
       len (96 * tokenBalance.length) + 64
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
        revert with 0, 'timeout'
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xdb41b10b with:
         gas gas_remaining wei
        args 0, 3, arg1, arg2 << 248, arg3
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
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg5 < block.timestamp:
        revert with 0, 'timeout'
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0x80e7d290 with:
         gas gas_remaining wei
        args 0, 3, arg1 << 248, arg2 << 248, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
    return delegate.return_data[0]
}

function calculateTokenAmount(uint256[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xe7401398 with:
         gas gas_remaining wei
        args 0, 3, 96, arg2, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function calculateCurrentWithdrawFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 672 * 24 * 3600 > !stor14[address(arg1)]:
        revert with 0, 17
    if stor14[address(arg1)] + (672 * 24 * 3600) <= block.timestamp:
        return 0
    if stor14[address(arg1)] + (672 * 24 * 3600) < block.timestamp:
        revert with 0, 17
    if stor13 and stor15[address(arg1)] > -1 / stor13:
        revert with 0, 17
    if stor13 * stor15[address(arg1)] and stor14[address(arg1)] + -block.timestamp + (672 * 24 * 3600) > -1 / stor13 * stor15[address(arg1)]:
        revert with 0, 17
    return ((672 * 24 * 3600 * stor13 * stor15[address(arg1)]) + (stor14[address(arg1)] * stor13 * stor15[address(arg1)]) - (block.timestamp * stor13 * stor15[address(arg1)]) / 672 * 24 * 3600 / 10^10)
}

function getTokens() payable {
    mem[64] = (32 * token.length) + 128
    mem[96] = token.length
    if not token.length:
        mem[(32 * token.length) + 128] = 32
        mem[(32 * token.length) + 160] = token.length
        idx = 0
        s = (32 * token.length) + 192
        t = 128
        while idx < token.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * token.length) + 128
           len (96 * token.length) + 64
    mem[128] = address(token.field_0)
    idx = 128
    s = 0
    while (32 * token.length) + 96 > idx:
        mem[idx + 32] = token[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * token.length) + 128] = 32
    mem[(32 * token.length) + 160] = token.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < token.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * token.length) + -mem[64] + 192
}

function addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg3 < block.timestamp:
        revert with 0, 'timeout'
    mem[ceil32(32 * arg1.length) + 97] = 0x6601432f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg1.length) + 101] = 3
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0x6601432f with:
         gas gas_remaining wei
        args 3, Array(len=arg1.length, data=mem[128 len 32 * arg1.length]), arg2
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
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor0:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'timeout'
    mem[ceil32(32 * arg1.length) + 97] = 0xe92ad71500000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg1.length) + 101] = 3
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xe92ad715 with:
         gas gas_remaining wei
        args 3, Array(len=arg1.length, data=mem[128 len 32 * arg1.length]), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
    return delegate.return_data[0]
}

function rampA(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 24 * 3600 > !stor11:
        revert with 0, 17
    if block.timestamp < stor11 + (24 * 3600):
        revert with 0, '< rampDelay'
    if block.timestamp > -86401:
        revert with 0, 17
    if arg2 < block.timestamp + (24 * 3600):
        revert with 0, '< minRampTime'
    if 0 >= arg1:
        revert with 0, 'outOfRange'
    if arg1 >= 10^6:
        revert with 0, 'outOfRange'
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xda2a54b1 with:
         gas gas_remaining wei
        args 3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and 100 > -1 / arg1:
        revert with 0, 17
    if 100 * arg1 >= delegate.return_data[0]:
        if delegate.return_data[0] and 10 > -1 / delegate.return_data[0]:
            revert with 0, 17
        if 100 * arg1 > 10 * delegate.return_data[0]:
            revert with 0, '> maxChange'
    else:
        if 100 * arg1 and 10 > -1 / 100 * arg1:
            revert with 0, 17
        if 1000 * arg1 < delegate.return_data[0]:
            revert with 0, '> maxChange'
    stor9 = delegate.return_data[0]
    stor10 = 100 * arg1
    stor11 = block.timestamp
    stor12 = arg2
    emit RampA(delegate.return_data[0], 100 * arg1, block.timestamp, arg2);
}

function calculateRemoveLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[96] = 0xa93f034100000000000000000000000000000000000000000000000000000000
    mem[100] = 3
    mem[132] = arg1
    mem[164] = arg2
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xa93f0341 with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
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

function getAdminBalances() payable {
    if token.length > test266151307():
        revert with 0, 65
    mem[96] = token.length
    mem[64] = (32 * token.length) + 128
    if not token.length:
        idx = 0
        while idx < token.length:
            mem[mem[64] + 4] = 3
            mem[mem[64] + 36] = idx
            require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
            delegate 0x6927e99071578b755292199bcbbe653975606316.0xb02058c4 with:
                 gas gas_remaining wei
                args 3, idx
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_27]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * token.length] = call.data[calldata.size len 32 * token.length]
        idx = 0
        while idx < token.length:
            mem[mem[64] + 4] = 3
            mem[mem[64] + 36] = idx
            require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
            delegate 0x6927e99071578b755292199bcbbe653975606316.0xb02058c4 with:
                 gas gas_remaining wei
                args 3, idx
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_29]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function removeLiquidity(uint256 arg1, uint256[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg3 < block.timestamp:
        revert with 0, 'timeout'
    mem[ceil32(32 * arg2.length) + 97] = 0xc9d47ed400000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + 101] = 3
    mem[ceil32(32 * arg2.length) + 133] = arg1
    mem[ceil32(32 * arg2.length) + 165] = 96
    mem[ceil32(32 * arg2.length) + 197] = arg2.length
    mem[ceil32(32 * arg2.length) + 229 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    require ext_code.size(0x6927e99071578b755292199bcbbe653975606316)
    delegate 0x6927e99071578b755292199bcbbe653975606316.0xc9d47ed4 with:
         gas gas_remaining wei
        args 3, arg1, Array(len=arg2.length, data=mem[128 len 32 * arg2.length])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * arg2.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _39 = mem[ceil32(32 * arg2.length) + 97 len 4], 0
    require mem[ceil32(32 * arg2.length) + 97 len 4], 0 <= test266151307()
    require ceil32(32 * arg2.length) + return_data.size + 97 > ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], 0 + 128
    _40 = mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], 0 + 97]
    if mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], 0 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], 0 + 97]) + 1 < 0 or ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], 0 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], 0 + 97]) + 98
    mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 97] = mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], 0 + 97]
    require _39 + (32 * _40) + 32 <= return_data.size
    mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 129 len 32 * _40] = mem[ceil32(32 * arg2.length) + _39 + 129 len 32 * _40]
    stor1 = 1
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _40
    mem[mem[64] + 64 len 32 * _40] = mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 129 len 32 * _40]
    return Array(len=_40, data=mem[mem[64] + 64 len 32 * _40])
}

function withdrawAdminFee() payable {
    mem[64] = 96
    if msg.sender == feeControllerAddress:
        idx = 0
        while idx < token.length:
            if idx >= tokenBalance.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(token[idx].field_0)
            staticcall token[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _179 = mem[_177]
            if mem[_177] < tokenBalance[idx].field_0:
                revert with 0, 17
            if mem[_177] - tokenBalance[idx].field_0:
                _181 = mem[64]
                mem[mem[64] + 36] = feeDistributorAddress
                mem[mem[64] + 68] = _179 - tokenBalance[idx].field_0
                _182 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_182 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_182 + 36 len 28]
                mem[64] = _181 + 164
                mem[_181 + 100] = 32
                mem[_181 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(token[idx].field_0):
                    revert with 0, 'Address: call to non-contract'
                _193 = mem[_182]
                s = 0
                while s < _193:
                    mem[s + _181 + 164] = mem[s + _182 + 32]
                    s = s + 32
                    continue 
                if ceil32(_193) > _193:
                    mem[_181 + _193 + 164] = 0
                call token[idx].field_0.mem[_181 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_181 + 168 len _193 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_181 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_181 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _181 + 232] = mem[idx + _181 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_181 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_181 + 164] = token[idx].field_0
                    mem[_181 + 196] = _179 - tokenBalance[idx].field_0
                else:
                    mem[64] = _181 + ceil32(return_data.size) + 165
                    mem[_181 + 164] = return_data.size
                    mem[_181 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_181 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_181 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _181 + ceil32(return_data.size) + 233] = mem[idx + _181 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_181 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_181 + 196] == bool(mem[_181 + 196])
                        if not mem[_181 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_181 + ceil32(return_data.size) + 165] = token[idx].field_0
                    mem[_181 + ceil32(return_data.size) + 197] = _179 - tokenBalance[idx].field_0
                emit CollectProtocolFee(token[idx].field_0, _179 - tokenBalance[idx].field_0);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, '!feeControllerOrOwner'
        idx = 0
        while idx < token.length:
            if idx >= tokenBalance.length:
                revert with 0, 50
            mem[0] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(token[idx].field_0)
            staticcall token[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _178 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _180 = mem[_178]
            if mem[_178] < tokenBalance[idx].field_0:
                revert with 0, 17
            if mem[_178] - tokenBalance[idx].field_0:
                _184 = mem[64]
                mem[mem[64] + 36] = feeDistributorAddress
                mem[mem[64] + 68] = _180 - tokenBalance[idx].field_0
                _185 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_185 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_185 + 36 len 28]
                mem[64] = _184 + 164
                mem[_184 + 100] = 32
                mem[_184 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(token[idx].field_0):
                    revert with 0, 'Address: call to non-contract'
                _195 = mem[_185]
                s = 0
                while s < _195:
                    mem[s + _184 + 164] = mem[s + _185 + 32]
                    s = s + 32
                    continue 
                if ceil32(_195) > _195:
                    mem[_184 + _195 + 164] = 0
                call token[idx].field_0.mem[_184 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_184 + 168 len _195 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_184 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_184 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _184 + 232] = mem[idx + _184 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_184 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_184 + 164] = token[idx].field_0
                    mem[_184 + 196] = _180 - tokenBalance[idx].field_0
                else:
                    mem[64] = _184 + ceil32(return_data.size) + 165
                    mem[_184 + 164] = return_data.size
                    mem[_184 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_184 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_184 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _184 + ceil32(return_data.size) + 233] = mem[idx + _184 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_184 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_184 + 196] == bool(mem[_184 + 196])
                        if not mem[_184 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_184 + ceil32(return_data.size) + 165] = token[idx].field_0
                    mem[_184 + ceil32(return_data.size) + 197] = _180 - tokenBalance[idx].field_0
                emit CollectProtocolFee(token[idx].field_0, _180 - tokenBalance[idx].field_0);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
