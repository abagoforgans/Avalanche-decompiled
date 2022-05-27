contract main {




// =====================  Runtime code  =====================


#
#  - resetAllowances()
#  - unpause()
#  - withdraw(address arg1, uint256 arg2)
#  - earn(address arg1)
#
const sub_015fc88f(?) = 10000

const sub_1401a634(?) = 10000

const sub_64f3dbcb(?) = 9900

const sub_f4a9cdf6(?) = 995

const FEE_MAX = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint256 sub_c4445a62;
uint256 sub_9788633e;
uint256 sub_395e8ed0;
address wantAddress;
address earnedAddress;
address sub_527509f3Address;
address sub_9e1a8613Address;
address sub_a9f45f26Address;
address sub_6d082483Address;
address rewardAddress;
address withdrawFeeAddress;
address vaultChefAddress;
address operatorAddress;
uint256 lastEarnBlock;
uint256 sharesTotal;
address buyBackAddress;
uint256 controllerFee;
uint256 rewardRate;
uint256 buyBackRate;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_fb6bb272;
array of address sub_f6656435;
array of address sub_522af8a7;
address token0Address;
address token1Address;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of struct token0ToEarnedPath;
array of struct token1ToEarnedPath;
address masterchefAddress;
uint256 pid;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1].field_0
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function operatorAddress() payable {
    return operatorAddress
}

function buyBackRate() payable {
    return buyBackRate
}

function vaultChefAddress() payable {
    return vaultChefAddress
}

function sub_395e8ed0(?) payable {
    return sub_395e8ed0
}

function masterchefAddress() payable {
    return masterchefAddress
}

function sharesTotal() payable {
    return sharesTotal
}

function sub_522af8a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_522af8a7.length
    return sub_522af8a7[arg1]
}

function sub_527509f3(?) payable {
    return sub_527509f3Address
}

function paused() payable {
    return bool(stor2)
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function sub_6d082483(?) payable {
    return sub_6d082483Address
}

function buyBackAddress() payable {
    return buyBackAddress
}

function withdrawFeeAddress() payable {
    return withdrawFeeAddress
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

function rewardAddress() payable {
    return rewardAddress
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function sub_9788633e(?) payable {
    return sub_9788633e
}

function sub_9e1a8613(?) payable {
    return sub_9e1a8613Address
}

function sub_a9f45f26(?) payable {
    return sub_a9f45f26Address
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1].field_0
}

function sub_c4445a62(?) payable {
    return sub_c4445a62
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
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

function sub_f6656435(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f6656435.length
    return sub_f6656435[arg1]
}

function sub_fb6bb272(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_fb6bb272.length
    return sub_fb6bb272[arg1]
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    operatorAddress = arg1
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

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function vaultSharesTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function setAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'Invalid Withdraw address'
    if not arg1:
        revert with 0, 'Invalid reward address'
    if not arg3:
        revert with 0, 'Invalid buyback address'
    rewardAddress = arg1
    withdrawFeeAddress = arg2
    buyBackAddress = arg3
    emit SetAddress(address(arg1), address(arg2), arg3);
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > 10000:
        revert with 0, 'Max fee of 100%'
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

function wantLockedTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function unpanic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0, '!operator'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[132] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call wantAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if sharesTotal <= 0:
            revert with 0, 'Low deposit - no shares added'
        if not 2 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / 2 * ext_call.return_data[0] < 1:
            revert with 0, 'Low deposit - no shares added'
        if sharesTotal > -(0 / 2 * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        sharesTotal += 0 / 2 * ext_call.return_data[0]
        stor1 = 1
        return (0 / 2 * ext_call.return_data[0])
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(masterchefAddress)
    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if sharesTotal <= 0:
        revert with 0, 'Low deposit - no shares added'
    if 0 and sharesTotal > -1 / 0:
        revert with 'NH{q', 17
    if not 2 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] < 1:
        revert with 0, 'Low deposit - no shares added'
    if sharesTotal > -((ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    sharesTotal += (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]
    stor1 = 1
    return ((ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
}

function convertDustToEarned() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            if token1Address != earnedAddress:
                mem[(2 * ceil32(return_data.size)) + 96] = token1ToEarnedPath.length
                if not token1ToEarnedPath.length:
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 228
                    while idx < token1ToEarnedPath.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_527509f3Address)
                    staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132 len (96 * token1ToEarnedPath.length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128
                    require return_data.size >= 32
                    _104 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + return_data.size + 128
                    _107 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    require _104 + (32 * _107) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _104 + 160
                    t = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160
                    while idx < _107:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _107 < 1:
                        revert with 'NH{q', 17
                    if _107 - 1 >= _107:
                        revert with 'NH{q', 50
                    _183 = mem[(32 * _107 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]
                    if mem[(32 * _107 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _107 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                        revert with 'NH{q', 17
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _183 * slippageFactor / 1000
                    mem[mem[64] + 68] = 160
                    _213 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _213:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 600
                    require ext_code.size(sub_527509f3Address)
                    call sub_527509f3Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _183 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _213) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _323 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _329 = mem[_323]
                    require mem[_323] <= test266151307()
                    require _323 + mem[_323] + 31 < _323 + return_data.size
                    _332 = mem[_323 + mem[_323]]
                    if mem[_323 + mem[_323]] > test266151307():
                        revert with 'NH{q', 65
                    if _323 + ceil32(return_data.size) + floor32(mem[_323 + mem[_323]]) + 1 > test266151307() or floor32(mem[_323 + mem[_323]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _323 + ceil32(return_data.size) + floor32(mem[_323 + mem[_323]]) + 1
                    mem[_323 + ceil32(return_data.size)] = _332
                    require _329 + (32 * _332) + 32 <= return_data.size
                    idx = 0
                    s = _323 + _329 + 32
                    t = _323 + ceil32(return_data.size) + 32
                    while idx < _332:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    mem[0] = 32
                    mem[(2 * ceil32(return_data.size)) + 128] = address(token1ToEarnedPath.field_0)
                    idx = (2 * ceil32(return_data.size)) + 128
                    s = 0
                    while (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 96 > idx:
                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 228
                    while idx < token1ToEarnedPath.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_527509f3Address)
                    staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132 len (96 * token1ToEarnedPath.length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128
                    require return_data.size >= 32
                    _314 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + return_data.size + 128
                    _317 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    require _314 + (32 * _317) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _314 + 160
                    t = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160
                    while idx < _317:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _317 < 1:
                        revert with 'NH{q', 17
                    if _317 - 1 >= _317:
                        revert with 'NH{q', 50
                    if mem[(32 * _317 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _317 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                        revert with 'NH{q', 17
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    _446 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = mem[(32 * _317 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                    mem[mem[64] + 68] = 160
                    _453 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _453:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_446 + 100] = this.address
                    mem[_446 + 132] = block.timestamp + 600
                    require ext_code.size(sub_527509f3Address)
                    call sub_527509f3Address.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _446 + (32 * _453) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _521 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _525 = mem[_521]
                    require mem[_521] <= test266151307()
                    require _521 + mem[_521] + 31 < _521 + return_data.size
                    _528 = mem[_521 + mem[_521]]
                    if mem[_521 + mem[_521]] > test266151307():
                        revert with 'NH{q', 65
                    if _521 + ceil32(return_data.size) + floor32(mem[_521 + mem[_521]]) + 1 > test266151307() or floor32(mem[_521 + mem[_521]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _521 + ceil32(return_data.size) + floor32(mem[_521 + mem[_521]]) + 1
                    mem[_521 + ceil32(return_data.size)] = _528
                    require _525 + (32 * _528) + 32 <= return_data.size
                    idx = 0
                    s = _521 + _525 + 32
                    t = _521 + ceil32(return_data.size) + 32
                    while idx < _528:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    else:
        if token0Address == earnedAddress:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                if token1Address != earnedAddress:
                    mem[(2 * ceil32(return_data.size)) + 96] = token1ToEarnedPath.length
                    if not token1ToEarnedPath.length:
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 228
                        while idx < token1ToEarnedPath.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(sub_527509f3Address)
                        staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132 len (96 * token1ToEarnedPath.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128
                        require return_data.size >= 32
                        _105 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + return_data.size + 128
                        _108 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                            revert with 'NH{q', 65
                        if (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        require _105 + (32 * _108) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _105 + 160
                        t = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160
                        while idx < _108:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _108 < 1:
                            revert with 'NH{q', 17
                        if _108 - 1 >= _108:
                            revert with 'NH{q', 50
                        _184 = mem[(32 * _108 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]
                        if mem[(32 * _108 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _108 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _184 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _215 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _215:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(sub_527509f3Address)
                        call sub_527509f3Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _184 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _215) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _324 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _330 = mem[_324]
                        require mem[_324] <= test266151307()
                        require _324 + mem[_324] + 31 < _324 + return_data.size
                        _333 = mem[_324 + mem[_324]]
                        if mem[_324 + mem[_324]] > test266151307():
                            revert with 'NH{q', 65
                        if _324 + ceil32(return_data.size) + floor32(mem[_324 + mem[_324]]) + 1 > test266151307() or floor32(mem[_324 + mem[_324]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _324 + ceil32(return_data.size) + floor32(mem[_324 + mem[_324]]) + 1
                        mem[_324 + ceil32(return_data.size)] = _333
                        require _330 + (32 * _333) + 32 <= return_data.size
                        idx = 0
                        s = _324 + _330 + 32
                        t = _324 + ceil32(return_data.size) + 32
                        while idx < _333:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        mem[0] = 32
                        mem[(2 * ceil32(return_data.size)) + 128] = address(token1ToEarnedPath.field_0)
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 96 > idx:
                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 228
                        while idx < token1ToEarnedPath.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(sub_527509f3Address)
                        staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132 len (96 * token1ToEarnedPath.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128
                        require return_data.size >= 32
                        _315 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + return_data.size + 128
                        _318 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                            revert with 'NH{q', 65
                        if (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        require _315 + (32 * _318) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _315 + 160
                        t = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160
                        while idx < _318:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _318 < 1:
                            revert with 'NH{q', 17
                        if _318 - 1 >= _318:
                            revert with 'NH{q', 50
                        if mem[(32 * _318 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _318 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        _447 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = mem[(32 * _318 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _454 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _454:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_447 + 100] = this.address
                        mem[_447 + 132] = block.timestamp + 600
                        require ext_code.size(sub_527509f3Address)
                        call sub_527509f3Address.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _447 + (32 * _454) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _522 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _526 = mem[_522]
                        require mem[_522] <= test266151307()
                        require _522 + mem[_522] + 31 < _522 + return_data.size
                        _529 = mem[_522 + mem[_522]]
                        if mem[_522 + mem[_522]] > test266151307():
                            revert with 'NH{q', 65
                        if _522 + ceil32(return_data.size) + floor32(mem[_522 + mem[_522]]) + 1 > test266151307() or floor32(mem[_522 + mem[_522]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _522 + ceil32(return_data.size) + floor32(mem[_522 + mem[_522]]) + 1
                        mem[_522 + ceil32(return_data.size)] = _529
                        require _526 + (32 * _529) + 32 <= return_data.size
                        idx = 0
                        s = _522 + _526 + 32
                        t = _522 + ceil32(return_data.size) + 32
                        while idx < _529:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            mem[ceil32(return_data.size) + 96] = token0ToEarnedPath.length
            if not token0ToEarnedPath.length:
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 132] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 164] = 64
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 196] = token0ToEarnedPath.length
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 228
                while idx < token0ToEarnedPath.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_527509f3Address)
                staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 132 len (96 * token0ToEarnedPath.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 128
                require return_data.size >= 32
                _106 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + return_data.size + 128
                _109 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                if mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 128] = _109
                require _106 + (32 * _109) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + _106 + 160
                t = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160
                while idx < _109:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _109 < 1:
                    revert with 'NH{q', 17
                if _109 - 1 >= _109:
                    revert with 'NH{q', 50
                _185 = mem[(32 * _109 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]
                if mem[(32 * _109 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _109 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]:
                    revert with 'NH{q', 17
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _185 * slippageFactor / 1000
                mem[mem[64] + 68] = 160
                _217 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 196
                while idx < _217:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 600
                require ext_code.size(sub_527509f3Address)
                call sub_527509f3Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _185 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _217) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _325 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _331 = mem[_325]
                require mem[_325] <= test266151307()
                require _325 + mem[_325] + 31 < _325 + return_data.size
                _334 = mem[_325 + mem[_325]]
                if mem[_325 + mem[_325]] > test266151307():
                    revert with 'NH{q', 65
                if _325 + ceil32(return_data.size) + floor32(mem[_325 + mem[_325]]) + 1 > test266151307() or floor32(mem[_325 + mem[_325]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _325 + ceil32(return_data.size) + floor32(mem[_325 + mem[_325]]) + 1
                mem[_325 + ceil32(return_data.size)] = _334
                require _331 + (32 * _334) + 32 <= return_data.size
                idx = 0
                s = _325 + _331 + 32
                t = _325 + ceil32(return_data.size) + 32
                while idx < _334:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _441 = mem[_440]
                require mem[_440] == mem[_440]
                if mem[_440] > 0:
                    if token1Address != earnedAddress:
                        _442 = mem[64]
                        mem[64] = mem[64] + (32 * token1ToEarnedPath.length) + 32
                        mem[_442] = token1ToEarnedPath.length
                        if not token1ToEarnedPath.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _441
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = token1ToEarnedPath.length
                            idx = 0
                            s = _442 + 32
                            t = mem[64] + 100
                            while idx < token1ToEarnedPath.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_527509f3Address)
                            staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _441, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _515 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _516 = mem[_515]
                            require mem[_515] <= test266151307()
                            require _515 + mem[_515] + 31 < _515 + return_data.size
                            _517 = mem[_515 + mem[_515]]
                            if mem[_515 + mem[_515]] > test266151307():
                                revert with 'NH{q', 65
                            if _515 + ceil32(return_data.size) + floor32(mem[_515 + mem[_515]]) + 1 > test266151307() or floor32(mem[_515 + mem[_515]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _515 + ceil32(return_data.size) + floor32(mem[_515 + mem[_515]]) + 1
                            mem[_515 + ceil32(return_data.size)] = _517
                            require _516 + (32 * _517) + 32 <= return_data.size
                            idx = 0
                            s = _515 + _516 + 32
                            t = _515 + ceil32(return_data.size) + 32
                            while idx < _517:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _517 < 1:
                                revert with 'NH{q', 17
                            if _517 - 1 >= _517:
                                revert with 'NH{q', 50
                            if mem[(32 * _517 - 1) + _515 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _517 - 1) + _515 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            _600 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _441
                            mem[mem[64] + 36] = mem[(32 * _517 - 1) + _515 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _607 = mem[_442]
                            mem[mem[64] + 164] = mem[_442]
                            idx = 0
                            s = _442 + 32
                            t = mem[64] + 196
                            while idx < _607:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_600 + 100] = this.address
                            mem[_600 + 132] = block.timestamp + 600
                            require ext_code.size(sub_527509f3Address)
                            call sub_527509f3Address.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _600 + (32 * _607) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _653 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _656 = mem[_653]
                            require mem[_653] <= test266151307()
                            require _653 + mem[_653] + 31 < _653 + return_data.size
                            _657 = mem[_653 + mem[_653]]
                            if mem[_653 + mem[_653]] > test266151307():
                                revert with 'NH{q', 65
                            if _653 + ceil32(return_data.size) + floor32(mem[_653 + mem[_653]]) + 1 > test266151307() or floor32(mem[_653 + mem[_653]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _653 + ceil32(return_data.size) + floor32(mem[_653 + mem[_653]]) + 1
                            mem[_653 + ceil32(return_data.size)] = _657
                            require _656 + (32 * _657) + 32 <= return_data.size
                            idx = 0
                            s = _653 + _656 + 32
                            t = _653 + ceil32(return_data.size) + 32
                            while idx < _657:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            mem[0] = 32
                            mem[_442 + 32] = address(token1ToEarnedPath.field_0)
                            idx = _442 + 32
                            s = 0
                            while _442 + (32 * token1ToEarnedPath.length) > idx:
                                mem[idx + 32] = token1ToEarnedPath[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _441
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = token1ToEarnedPath.length
                            idx = 0
                            s = _442 + 32
                            t = mem[64] + 100
                            while idx < token1ToEarnedPath.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_527509f3Address)
                            staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _441, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _646 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _648 = mem[_646]
                            require mem[_646] <= test266151307()
                            require _646 + mem[_646] + 31 < _646 + return_data.size
                            _650 = mem[_646 + mem[_646]]
                            if mem[_646 + mem[_646]] > test266151307():
                                revert with 'NH{q', 65
                            if _646 + ceil32(return_data.size) + floor32(mem[_646 + mem[_646]]) + 1 > test266151307() or floor32(mem[_646 + mem[_646]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _646 + ceil32(return_data.size) + floor32(mem[_646 + mem[_646]]) + 1
                            mem[_646 + ceil32(return_data.size)] = _650
                            require _648 + (32 * _650) + 32 <= return_data.size
                            idx = 0
                            s = _646 + _648 + 32
                            t = _646 + ceil32(return_data.size) + 32
                            while idx < _650:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _650 < 1:
                                revert with 'NH{q', 17
                            if _650 - 1 >= _650:
                                revert with 'NH{q', 50
                            _695 = mem[(32 * _650 - 1) + _646 + ceil32(return_data.size) + 32]
                            if mem[(32 * _650 - 1) + _646 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _650 - 1) + _646 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _441
                            mem[mem[64] + 36] = _695 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _707 = mem[_442]
                            mem[mem[64] + 164] = mem[_442]
                            idx = 0
                            s = _442 + 32
                            t = mem[64] + 196
                            while idx < _707:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(sub_527509f3Address)
                            call sub_527509f3Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _441, _695 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _707) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _743 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _746 = mem[_743]
                            require mem[_743] <= test266151307()
                            require _743 + mem[_743] + 31 < _743 + return_data.size
                            _748 = mem[_743 + mem[_743]]
                            if mem[_743 + mem[_743]] > test266151307():
                                revert with 'NH{q', 65
                            if _743 + ceil32(return_data.size) + floor32(mem[_743 + mem[_743]]) + 1 > test266151307() or floor32(mem[_743 + mem[_743]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _743 + ceil32(return_data.size) + floor32(mem[_743 + mem[_743]]) + 1
                            mem[_743 + ceil32(return_data.size)] = _748
                            require _746 + (32 * _748) + 32 <= return_data.size
                            idx = 0
                            s = _743 + _746 + 32
                            t = _743 + ceil32(return_data.size) + 32
                            while idx < _748:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                mem[0] = 31
                mem[ceil32(return_data.size) + 128] = address(token0ToEarnedPath.field_0)
                idx = ceil32(return_data.size) + 128
                s = 0
                while ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 96 > idx:
                    mem[idx + 32] = token0ToEarnedPath[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 132] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 164] = 64
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 196] = token0ToEarnedPath.length
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 228
                while idx < token0ToEarnedPath.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_527509f3Address)
                staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 132 len (96 * token0ToEarnedPath.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 128
                require return_data.size >= 32
                _316 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + return_data.size + 128
                _319 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                if mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 128] = _319
                require _316 + (32 * _319) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + _316 + 160
                t = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160
                while idx < _319:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _319 < 1:
                    revert with 'NH{q', 17
                if _319 - 1 >= _319:
                    revert with 'NH{q', 50
                _439 = mem[(32 * _319 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]
                if mem[(32 * _319 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _319 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]:
                    revert with 'NH{q', 17
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _439 * slippageFactor / 1000
                mem[mem[64] + 68] = 160
                _455 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 196
                while idx < _455:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 600
                require ext_code.size(sub_527509f3Address)
                call sub_527509f3Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _439 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _455) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _523 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _527 = mem[_523]
                require mem[_523] <= test266151307()
                require _523 + mem[_523] + 31 < _523 + return_data.size
                _530 = mem[_523 + mem[_523]]
                if mem[_523 + mem[_523]] > test266151307():
                    revert with 'NH{q', 65
                if _523 + ceil32(return_data.size) + floor32(mem[_523 + mem[_523]]) + 1 > test266151307() or floor32(mem[_523 + mem[_523]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _523 + ceil32(return_data.size) + floor32(mem[_523 + mem[_523]]) + 1
                mem[_523 + ceil32(return_data.size)] = _530
                require _527 + (32 * _530) + 32 <= return_data.size
                idx = 0
                s = _523 + _527 + 32
                t = _523 + ceil32(return_data.size) + 32
                while idx < _530:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _592 = mem[_589]
                require mem[_589] == mem[_589]
                if mem[_589] > 0:
                    if token1Address != earnedAddress:
                        _595 = mem[64]
                        mem[64] = mem[64] + (32 * token1ToEarnedPath.length) + 32
                        mem[_595] = token1ToEarnedPath.length
                        if not token1ToEarnedPath.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _592
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = token1ToEarnedPath.length
                            idx = 0
                            s = _595 + 32
                            t = mem[64] + 100
                            while idx < token1ToEarnedPath.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_527509f3Address)
                            staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _592, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _647 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _649 = mem[_647]
                            require mem[_647] <= test266151307()
                            require _647 + mem[_647] + 31 < _647 + return_data.size
                            _651 = mem[_647 + mem[_647]]
                            if mem[_647 + mem[_647]] > test266151307():
                                revert with 'NH{q', 65
                            if _647 + ceil32(return_data.size) + floor32(mem[_647 + mem[_647]]) + 1 > test266151307() or floor32(mem[_647 + mem[_647]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _647 + ceil32(return_data.size) + floor32(mem[_647 + mem[_647]]) + 1
                            mem[_647 + ceil32(return_data.size)] = _651
                            require _649 + (32 * _651) + 32 <= return_data.size
                            idx = 0
                            s = _647 + _649 + 32
                            t = _647 + ceil32(return_data.size) + 32
                            while idx < _651:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _651 < 1:
                                revert with 'NH{q', 17
                            if _651 - 1 >= _651:
                                revert with 'NH{q', 50
                            _696 = mem[(32 * _651 - 1) + _647 + ceil32(return_data.size) + 32]
                            if mem[(32 * _651 - 1) + _647 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _651 - 1) + _647 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            _704 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _592
                            mem[mem[64] + 36] = _696 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _708 = mem[_595]
                            mem[mem[64] + 164] = mem[_595]
                            idx = 0
                            s = _595 + 32
                            t = mem[64] + 196
                            while idx < _708:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_704 + 100] = this.address
                            mem[_704 + 132] = block.timestamp + 600
                            require ext_code.size(sub_527509f3Address)
                            call sub_527509f3Address.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _704 + (32 * _708) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _744 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _747 = mem[_744]
                            require mem[_744] <= test266151307()
                            require _744 + mem[_744] + 31 < _744 + return_data.size
                            _749 = mem[_744 + mem[_744]]
                            if mem[_744 + mem[_744]] > test266151307():
                                revert with 'NH{q', 65
                            if _744 + ceil32(return_data.size) + floor32(mem[_744 + mem[_744]]) + 1 > test266151307() or floor32(mem[_744 + mem[_744]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _744 + ceil32(return_data.size) + floor32(mem[_744 + mem[_744]]) + 1
                            mem[_744 + ceil32(return_data.size)] = _749
                            require _747 + (32 * _749) + 32 <= return_data.size
                            idx = 0
                            s = _744 + _747 + 32
                            t = _744 + ceil32(return_data.size) + 32
                            while idx < _749:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            mem[0] = 32
                            mem[_595 + 32] = address(token1ToEarnedPath.field_0)
                            idx = _595 + 32
                            s = 0
                            while _595 + (32 * token1ToEarnedPath.length) > idx:
                                mem[idx + 32] = token1ToEarnedPath[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _592
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = token1ToEarnedPath.length
                            idx = 0
                            s = _595 + 32
                            t = mem[64] + 100
                            while idx < token1ToEarnedPath.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_527509f3Address)
                            staticcall sub_527509f3Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _592, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _738 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _739 = mem[_738]
                            require mem[_738] <= test266151307()
                            require _738 + mem[_738] + 31 < _738 + return_data.size
                            _740 = mem[_738 + mem[_738]]
                            if mem[_738 + mem[_738]] > test266151307():
                                revert with 'NH{q', 65
                            if _738 + ceil32(return_data.size) + floor32(mem[_738 + mem[_738]]) + 1 > test266151307() or floor32(mem[_738 + mem[_738]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _738 + ceil32(return_data.size) + floor32(mem[_738 + mem[_738]]) + 1
                            mem[_738 + ceil32(return_data.size)] = _740
                            require _739 + (32 * _740) + 32 <= return_data.size
                            idx = 0
                            s = _738 + _739 + 32
                            t = _738 + ceil32(return_data.size) + 32
                            while idx < _740:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _740 < 1:
                                revert with 'NH{q', 17
                            if _740 - 1 >= _740:
                                revert with 'NH{q', 50
                            _772 = mem[(32 * _740 - 1) + _738 + ceil32(return_data.size) + 32]
                            if mem[(32 * _740 - 1) + _738 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _740 - 1) + _738 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            _773 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _592
                            mem[mem[64] + 36] = _772 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _774 = mem[_595]
                            mem[mem[64] + 164] = mem[_595]
                            idx = 0
                            s = _595 + 32
                            t = mem[64] + 196
                            while idx < _774:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_773 + 100] = this.address
                            mem[_773 + 132] = block.timestamp + 600
                            require ext_code.size(sub_527509f3Address)
                            call sub_527509f3Address.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _773 + (32 * _774) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _784 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _785 = mem[_784]
                            require mem[_784] <= test266151307()
                            require _784 + mem[_784] + 31 < _784 + return_data.size
                            _786 = mem[_784 + mem[_784]]
                            if mem[_784 + mem[_784]] > test266151307():
                                revert with 'NH{q', 65
                            if _784 + ceil32(return_data.size) + floor32(mem[_784 + mem[_784]]) + 1 > test266151307() or floor32(mem[_784 + mem[_784]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _784 + ceil32(return_data.size) + floor32(mem[_784 + mem[_784]]) + 1
                            mem[_784 + ceil32(return_data.size)] = _786
                            require _785 + (32 * _786) + 32 <= return_data.size
                            idx = 0
                            s = _784 + _785 + 32
                            t = _784 + ceil32(return_data.size) + 32
                            while idx < _786:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
    stor1 = 1
}



}
