contract main {




// =====================  Runtime code  =====================


#
#  - resetAllowances()
#  - unpause()
#  - panic()
#  - earn()
#
const withdrawFeeFactorMax = 10000

const buyBackAddress = 57005

const withdrawFeeFactorLL = 9900

const feeMaxTotal = 1000

const slippageFactorUL = 995

const feeMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
address wantAddress; offset 8
address earnedAddress;
address uniRouterAddress;
address dcauAddress;
uint32 stor6;
address withdrawFeeAddress;
uint256 stor6;
address feeAddress;
uint32 stor8;
address vaultChefAddress;
uint256 stor8;
address govAddress;
uint256 lastEarnBlock;
uint256 sharesTotal;
uint256 controllerFee;
uint256 rewardRate;
uint256 buyBackRate;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address earnedToWmaticPath;
array of address earnedToDcauPath;
uint8 hasPanicked;
address token0Address; offset 8
address token1Address;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
address masterchefAddress;
uint256 pid;

function HasPanicked() payable {
    return bool(hasPanicked)
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function buyBackRate() payable {
    return buyBackRate
}

function earnedToWmaticPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToWmaticPath.length
    return earnedToWmaticPath[arg1]
}

function earnedToDcauPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToDcauPath.length
    return earnedToDcauPath[arg1]
}

function vaultChefAddress() payable {
    return address(vaultChefAddress)
}

function masterchefAddress() payable {
    return masterchefAddress
}

function feeAddress() payable {
    return feeAddress
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function paused() payable {
    return bool(stor2)
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function withdrawFeeAddress() payable {
    return address(withdrawFeeAddress)
}

function rewardRate() payable {
    return rewardRate
}

function token0Address() payable {
    return token0Address
}

function controllerFee() payable {
    return controllerFee
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function dcauAddress() payable {
    return dcauAddress
}

function token1Address() payable {
    return token1Address
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function pid() payable {
    return pid
}

function slippageFactor() payable {
    return slippageFactor
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

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
    emit 0x53351836: msg.sender, arg1
}

function totalInUnderlying() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
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

function wantLockedTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return (2 * ext_call.return_data[0])
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > 1000:
        revert with 0, 'Max fee of 10%'
    if arg4 < 9900:
        revert with 0, '_withdrawFeeFactor too low'
    if arg4 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    controllerFee = arg1
    rewardRate = arg2
    buyBackRate = arg3
    withdrawFeeFactor = arg4
    slippageFactor = arg5
    emit SetSettings(arg1, arg2, arg3, arg4, arg5);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[132] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    mem[(4 * ceil32(return_data.size)) + 196] = arg1
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call wantAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    revert with 0, 'We only accept amount > 0'
}

function convertDustToEarned() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if earnedAddress != token1Address:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = token1Address
                mem[(2 * ceil32(return_data.size)) + 160] = earnedAddress
                if ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = 64
                    mem[(2 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _132 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _136 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = _136
                    require return_data.size >= _132 + (32 * _136) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _136] = mem[(2 * ceil32(return_data.size)) + _132 + 224 len 32 * _136]
                    if _136 < 1:
                        revert with 0, 17
                    if _136 - 1 >= _136:
                        revert with 0, 50
                    _211 = mem[(32 * _136 - 1) + (4 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _136 - 1) + (4 * ceil32(return_data.size)) + 224] and slippageFactor > -1 / mem[(32 * _136 - 1) + (4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 17
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _211 * slippageFactor / 1000
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _211 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if earnedAddress == token0Address:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if earnedAddress != token1Address:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = token1Address
                    mem[(2 * ceil32(return_data.size)) + 160] = earnedAddress
                    if ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = 64
                        mem[(2 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _133 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                        _137 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                        mem[(4 * ceil32(return_data.size)) + 192] = _137
                        require return_data.size >= _133 + (32 * _137) + 32
                        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _137] = mem[(2 * ceil32(return_data.size)) + _133 + 224 len 32 * _137]
                        if _137 < 1:
                            revert with 0, 17
                        if _137 - 1 >= _137:
                            revert with 0, 50
                        _212 = mem[(32 * _137 - 1) + (4 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _137 - 1) + (4 * ceil32(return_data.size)) + 224] and slippageFactor > -1 / mem[(32 * _137 - 1) + (4 * ceil32(return_data.size)) + 224]:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _212 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _212 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = token0Address
            mem[ceil32(return_data.size) + 160] = earnedAddress
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 196] = this.address
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if earnedAddress != token1Address:
                        mem[(2 * ceil32(return_data.size)) + 192] = 2
                        mem[(2 * ceil32(return_data.size)) + 224] = token1Address
                        mem[(2 * ceil32(return_data.size)) + 256] = earnedAddress
                        if ext_call.return_data[0]:
                            mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 324] = 64
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 224
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniRouterAddress)
                            staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            _134 = mem[(2 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
                            _138 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                            mem[(4 * ceil32(return_data.size)) + 288] = _138
                            require return_data.size >= _134 + (32 * _138) + 32
                            mem[(4 * ceil32(return_data.size)) + 320 len 32 * _138] = mem[(2 * ceil32(return_data.size)) + _134 + 320 len 32 * _138]
                            if _138 < 1:
                                revert with 0, 17
                            if _138 - 1 >= _138:
                                revert with 0, 50
                            _213 = mem[(32 * _138 - 1) + (4 * ceil32(return_data.size)) + 320]
                            if mem[(32 * _138 - 1) + (4 * ceil32(return_data.size)) + 320] and slippageFactor > -1 / mem[(32 * _138 - 1) + (4 * ceil32(return_data.size)) + 320]:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _213 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 224
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _213 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 228] = 64
                mem[ceil32(return_data.size) + 260] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _135 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                _139 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                require return_data.size >= _135 + (32 * _139) + 32
                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _139] = mem[ceil32(return_data.size) + _135 + 224 len 32 * _139]
                if _139 < 1:
                    revert with 0, 17
                if _139 - 1 >= _139:
                    revert with 0, 50
                _214 = mem[(32 * _139 - 1) + (2 * ceil32(return_data.size)) + 224]
                if mem[(32 * _139 - 1) + (2 * ceil32(return_data.size)) + 224] and slippageFactor > -1 / mem[(32 * _139 - 1) + (2 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _214 * slippageFactor / 1000
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(uniRouterAddress)
                call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _214 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _265 = mem[_264]
                if mem[_264] > 0:
                    if earnedAddress != token1Address:
                        _266 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_266]:
                            revert with 0, 50
                        mem[_266 + 32] = token1Address
                        if 1 >= mem[_266]:
                            revert with 0, 50
                        mem[_266 + 64] = earnedAddress
                        if _265:
                            mem[_266 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_266 + 100] = _265
                            mem[_266 + 132] = 64
                            mem[_266 + 164] = mem[_266]
                            idx = 0
                            s = _266 + 32
                            t = _266 + 196
                            while idx < mem[_266]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniRouterAddress)
                            staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _266 + (32 * mem[_266]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _287 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _288 = mem[_287]
                            require mem[_287] <= test266151307()
                            require _287 + mem[_287] + 31 < _287 + return_data.size
                            _289 = mem[_287 + mem[_287]]
                            if mem[_287 + mem[_287]] > test266151307():
                                revert with 0, 65
                            if _287 + ceil32(return_data.size) + (32 * mem[_287 + mem[_287]]) + 32 > test266151307() or (32 * mem[_287 + mem[_287]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _287 + ceil32(return_data.size) + (32 * mem[_287 + mem[_287]]) + 32
                            mem[_287 + ceil32(return_data.size)] = _289
                            require return_data.size >= _288 + (32 * _289) + 32
                            mem[_287 + ceil32(return_data.size) + 32 len 32 * _289] = mem[_287 + _288 + 32 len 32 * _289]
                            if _289 < 1:
                                revert with 0, 17
                            if _289 - 1 >= _289:
                                revert with 0, 50
                            _302 = mem[(32 * _289 - 1) + _287 + ceil32(return_data.size) + 32]
                            if mem[(32 * _289 - 1) + _287 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _289 - 1) + _287 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            _303 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _265
                            mem[mem[64] + 36] = _302 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _304 = mem[_266]
                            mem[mem[64] + 164] = mem[_266]
                            idx = 0
                            s = _266 + 32
                            t = mem[64] + 196
                            while idx < _304:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_303 + 100] = this.address
                            mem[_303 + 132] = block.timestamp
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _303 + (32 * _304) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0, '_wantAmt is 0'
    mem[132] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if arg1 and sharesTotal > -1 / arg1:
            revert with 0, 17
        if not 2 * ext_call.return_data[0]:
            revert with 0, 18
        if arg1 * sharesTotal / 2 * ext_call.return_data[0] <= sharesTotal:
            if sharesTotal < arg1 * sharesTotal / 2 * ext_call.return_data[0]:
                revert with 0, 17
            sharesTotal -= arg1 * sharesTotal / 2 * ext_call.return_data[0]
            if 10000 < withdrawFeeFactor:
                revert with 0, 17
            if arg1 and -withdrawFeeFactor + 10000 > -1 / arg1:
                revert with 0, 17
            if not (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                mem[(4 * ceil32(return_data.size)) + 132] = address(vaultChefAddress)
                mem[(4 * ceil32(return_data.size)) + 164] = arg1
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor1 = 1
                return (arg1 * sharesTotal / 2 * ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 132] = address(withdrawFeeAddress)
            mem[(4 * ceil32(return_data.size)) + 164] = (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor6)
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 < (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 296] = address(vaultChefAddress)
                mem[(4 * ceil32(return_data.size)) + 328] = arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000)
                mem[(4 * ceil32(return_data.size)) + 260] = 68
                mem[(4 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 360] = 32
                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0
                mem[(4 * ceil32(return_data.size)) + 492] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor1 = 1
                return (arg1 * sharesTotal / 2 * ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if arg1 < (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultChefAddress)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor1 = 1
                return (arg1 * sharesTotal / 2 * ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 430] = 32
                mem[(8 * ceil32(return_data.size)) + 462] = 32
                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 426
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                stor1 = 1
                return (arg1 * sharesTotal / 2 * ext_call.return_data[0])
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
            if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                stor1 = 1
                return (arg1 * sharesTotal / 2 * ext_call.return_data[0])
        else:
            if sharesTotal < sharesTotal:
                revert with 0, 17
            sharesTotal = 0
            if 10000 < withdrawFeeFactor:
                revert with 0, 17
            if arg1 and -withdrawFeeFactor + 10000 > -1 / arg1:
                revert with 0, 17
            if not (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                mem[(4 * ceil32(return_data.size)) + 132] = address(vaultChefAddress)
                mem[(4 * ceil32(return_data.size)) + 164] = arg1
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor1 = 1
                return sharesTotal
            mem[(4 * ceil32(return_data.size)) + 132] = address(withdrawFeeAddress)
            mem[(4 * ceil32(return_data.size)) + 164] = (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor6)
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 < (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 296] = address(vaultChefAddress)
                mem[(4 * ceil32(return_data.size)) + 328] = arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000)
                mem[(4 * ceil32(return_data.size)) + 260] = 68
                mem[(4 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 360] = 32
                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0
                mem[(4 * ceil32(return_data.size)) + 492] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor1 = 1
                return sharesTotal
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if arg1 < (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultChefAddress)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor1 = 1
                return sharesTotal
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 430] = 32
                mem[(8 * ceil32(return_data.size)) + 462] = 32
                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 426
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                stor1 = 1
                return sharesTotal
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
            if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                stor1 = 1
                return sharesTotal
        ('iszero', ('mem', ('range', ('add', 457, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize')), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize'))), 32)))
        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 430] = 32
        mem[(8 * ceil32(return_data.size)) + 462] = 42
        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
        mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (8 * ceil32(return_data.size)) + 426
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if arg1 < ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 132] = arg1 - ext_call.return_data[0]
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x441a3e70 with:
         gas gas_remaining wei
        args pid, arg1 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and sharesTotal > -1 / arg1:
        revert with 0, 17
    if not 2 * ext_call.return_data[0]:
        revert with 0, 18
    if arg1 <= ext_call.return_data[0]:
        if arg1 * sharesTotal / 2 * ext_call.return_data[0] <= sharesTotal:
            if sharesTotal < arg1 * sharesTotal / 2 * ext_call.return_data[0]:
                revert with 0, 17
            sharesTotal -= arg1 * sharesTotal / 2 * ext_call.return_data[0]
            if 10000 < withdrawFeeFactor:
                revert with 0, 17
            if arg1 and -withdrawFeeFactor + 10000 > -1 / arg1:
                revert with 0, 17
            if not (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                mem[(6 * ceil32(return_data.size)) + 132] = address(vaultChefAddress)
                mem[(6 * ceil32(return_data.size)) + 164] = arg1
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 132] = address(withdrawFeeAddress)
                mem[(6 * ceil32(return_data.size)) + 164] = (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor6)
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if arg1 < (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 296] = address(vaultChefAddress)
                    mem[(6 * ceil32(return_data.size)) + 328] = arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000)
                    mem[(6 * ceil32(return_data.size)) + 260] = 68
                    mem[(6 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 360] = 32
                    mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0
                    mem[(6 * ceil32(return_data.size)) + 492] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                            if not mem[(6 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if arg1 < (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultChefAddress)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            stor1 = 1
            return (arg1 * sharesTotal / 2 * ext_call.return_data[0])
        if sharesTotal < sharesTotal:
            revert with 0, 17
        sharesTotal = 0
        if 10000 < withdrawFeeFactor:
            revert with 0, 17
        if arg1 and -withdrawFeeFactor + 10000 > -1 / arg1:
            revert with 0, 17
        if not (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
            mem[(6 * ceil32(return_data.size)) + 132] = address(vaultChefAddress)
            mem[(6 * ceil32(return_data.size)) + 164] = arg1
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 132] = address(withdrawFeeAddress)
            mem[(6 * ceil32(return_data.size)) + 164] = (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor6)
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 < (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + 296] = address(vaultChefAddress)
                mem[(6 * ceil32(return_data.size)) + 328] = arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000)
                mem[(6 * ceil32(return_data.size)) + 260] = 68
                mem[(6 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 360] = 32
                mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0
                mem[(6 * ceil32(return_data.size)) + 492] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 < (10000 * arg1) - (withdrawFeeFactor * arg1) / 10000:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultChefAddress)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultChefAddress), arg1 - ((10000 * arg1) - (withdrawFeeFactor * arg1) / 10000), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        if arg1 * sharesTotal / 2 * ext_call.return_data[0] <= sharesTotal:
            if sharesTotal < arg1 * sharesTotal / 2 * ext_call.return_data[0]:
                revert with 0, 17
            sharesTotal -= arg1 * sharesTotal / 2 * ext_call.return_data[0]
            if 10000 < withdrawFeeFactor:
                revert with 0, 17
            if ext_call.return_data[0] and -withdrawFeeFactor + 10000 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                mem[(6 * ceil32(return_data.size)) + 132] = address(vaultChefAddress)
                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 132] = address(withdrawFeeAddress)
                mem[(6 * ceil32(return_data.size)) + 164] = (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor6)
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000, 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 296] = address(vaultChefAddress)
                    mem[(6 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)
                    mem[(6 * ceil32(return_data.size)) + 260] = 68
                    mem[(6 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 360] = 32
                    mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0
                    mem[(6 * ceil32(return_data.size)) + 492] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                            if not mem[(6 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultChefAddress)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            stor1 = 1
            return (arg1 * sharesTotal / 2 * ext_call.return_data[0])
        if sharesTotal < sharesTotal:
            revert with 0, 17
        sharesTotal = 0
        if 10000 < withdrawFeeFactor:
            revert with 0, 17
        if ext_call.return_data[0] and -withdrawFeeFactor + 10000 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
            mem[(6 * ceil32(return_data.size)) + 132] = address(vaultChefAddress)
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 132] = address(withdrawFeeAddress)
            mem[(6 * ceil32(return_data.size)) + 164] = (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor6)
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ext_call.return_data[0] < (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + 296] = address(vaultChefAddress)
                mem[(6 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)
                mem[(6 * ceil32(return_data.size)) + 260] = 68
                mem[(6 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 360] = 32
                mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0
                mem[(6 * ceil32(return_data.size)) + 492] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ext_call.return_data[0] < (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultChefAddress)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultChefAddress), ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    stor1 = 1
    return sharesTotal
}



}
