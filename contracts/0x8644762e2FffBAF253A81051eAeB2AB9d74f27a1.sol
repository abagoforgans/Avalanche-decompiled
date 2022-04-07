contract main {




// =====================  Runtime code  =====================


#
#  - withdrawAll()
#
const rewardsToken = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const MAX_DURATION = (35040 * 24 * 3600)

const MAX_RATE = 10000


address owner;
uint256 stor1;
uint256 min_duration;
mapping of struct userInfo;
array of struct lockInfo;
uint256 limitClaimExtraRewards;
uint256 durationClaimExtraRewards;
uint256 totalPendingReward;
uint256 totalShares;
uint256 totalSupply;
uint8 stor10; offset 160
uint128 stor10; offset 160
address tokenAddress;
address strategyAddress;
uint256 accRewardPerShare;

function min_duration() payable {
    return min_duration
}

function totalSupply() payable {
    return totalSupply
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024,
           userInfo[arg1].field_1280,
           userInfo[arg1].field_1536,
           userInfo[arg1].field_1792
}

function unlockedStakes() payable {
    return bool(uint8(stor10.field_160))
}

function totalShares() payable {
    return totalShares
}

function limitClaimExtraRewards() payable {
    return limitClaimExtraRewards
}

function lockInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lockInfo.length
    return lockInfo[arg1].field_0, lockInfo[arg1].field_256
}

function principalOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[address(arg1)].field_256
}

function owner() payable {
    return owner
}

function accRewardPerShare() payable {
    return accRewardPerShare
}

function strategy() payable {
    return strategyAddress
}

function durationClaimExtraRewards() payable {
    return durationClaimExtraRewards
}

function totalPendingReward() payable {
    return totalPendingReward
}

function token() payable {
    return tokenAddress
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

function unlockStakes() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, not uint8(stor10.field_160))
}

function setLimitClaimExtraRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    limitClaimExtraRewards = arg1
}

function setDurationClaimExtraRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    durationClaimExtraRewards = arg1
}

function setMinDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 35040 * 24 * 3600:
        revert with 0, '!duration'
    min_duration = arg1
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

function updateLockInfo(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= lockInfo.length:
        revert with 0, '!index'
    if arg2 < min_duration:
        revert with 0, '!duration'
    require arg1 < lockInfo.length
    lockInfo[arg1].field_0 = arg2
    lockInfo[arg1].field_256 = arg3
}

function balance() payable {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function notifySentReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == strategyAddress
    if arg2:
        if arg2 + totalPendingReward < totalPendingReward:
            revert with 0, 'SafeMath: addition overflow'
        totalPendingReward += arg2
        if not arg2:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if (0 / totalShares) + accRewardPerShare < accRewardPerShare:
                revert with 0, 'SafeMath: addition overflow'
            accRewardPerShare += 0 / totalShares
        else:
            if 10^12 * arg2 / arg2 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if (10^12 * arg2 / totalShares) + accRewardPerShare < accRewardPerShare:
                revert with 0, 'SafeMath: addition overflow'
            accRewardPerShare += 10^12 * arg2 / totalShares
        emit RewardAdded(address(arg1), arg2);
}

function getPricePerFullShare() payable {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (0 / totalShares)
    else:
        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (2 * 10^18 * ext_call.return_data[0] / totalShares)
    ('iszero', ('stor', ('name', 'totalShares', 8)))
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalShares:
        return 0
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (0 / totalShares)
    else:
        if (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 2 * ext_call.return_data[0] != userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return ((ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / totalShares)
    ('iszero', ('stor', ('name', 'totalShares', 8)))
    revert
}

function claimExtraReward() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not userInfo[address(msg.sender)].field_1536:
        revert with 0, 'no claimable rewards'
    if durationClaimExtraRewards + userInfo[address(msg.sender)].field_1792 < userInfo[address(msg.sender)].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if durationClaimExtraRewards + userInfo[address(msg.sender)].field_1792 > block.timestamp:
        revert with 0, 'still not available to claim'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.devAllocation() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userInfo[address(msg.sender)].field_1536 <= limitClaimExtraRewards:
        if not userInfo[address(msg.sender)].field_1536:
            if -ext_call.return_data[0] + 10000 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require -ext_call.return_data[0] + 10000
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0 / -ext_call.return_data[0] + 10000
        else:
            if 10000 * userInfo[address(msg.sender)].field_1536 / userInfo[address(msg.sender)].field_1536 != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if -ext_call.return_data[0] + 10000 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require -ext_call.return_data[0] + 10000
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10000 * userInfo[address(msg.sender)].field_1536 / -ext_call.return_data[0] + 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userInfo[address(msg.sender)].field_1536 = 0
    else:
        if not limitClaimExtraRewards:
            if -ext_call.return_data[0] + 10000 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require -ext_call.return_data[0] + 10000
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0 / -ext_call.return_data[0] + 10000
        else:
            if 10000 * limitClaimExtraRewards / limitClaimExtraRewards != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if -ext_call.return_data[0] + 10000 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require -ext_call.return_data[0] + 10000
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10000 * limitClaimExtraRewards / -ext_call.return_data[0] + 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userInfo[address(msg.sender)].field_1536 -= limitClaimExtraRewards
    userInfo[address(msg.sender)].field_1792 = block.timestamp
    stor1 = 1
}

function emergencyWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    if arg2 <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
    else:
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 == totalShares:
            if 0 <= userInfo[address(arg1)].field_256:
                return 0, -userInfo[address(arg1)].field_512
        else:
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x722713f7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if 0 / totalShares <= userInfo[address(arg1)].field_256:
                    return 0, -userInfo[address(arg1)].field_512
            else:
                if (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 2 * ext_call.return_data[0] != userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / totalShares <= userInfo[address(arg1)].field_256:
                    return 0, -userInfo[address(arg1)].field_512
        if 0 == totalShares:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256, -userInfo[address(arg1)].field_512
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0x722713f7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if userInfo[address(arg1)].field_256 > 0 / totalShares:
                revert with 0, 'SafeMath: subtraction overflow'
            return (0 / totalShares) - userInfo[address(arg1)].field_256, -userInfo[address(arg1)].field_512
        if (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 2 * ext_call.return_data[0] != userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShares
        if userInfo[address(arg1)].field_256 > (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / totalShares:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / totalShares) - userInfo[address(arg1)].field_256, 
               -userInfo[address(arg1)].field_512
    if accRewardPerShare * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != accRewardPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[address(arg1)].field_512 > accRewardPerShare * userInfo[address(arg1)].field_0 / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 == totalShares:
        if 0 <= userInfo[address(arg1)].field_256:
            return 0, (accRewardPerShare * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_512
    else:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0x722713f7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if 0 / totalShares <= userInfo[address(arg1)].field_256:
                return 0, (accRewardPerShare * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_512
        else:
            if (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 2 * ext_call.return_data[0] != userInfo[address(arg1)].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / totalShares <= userInfo[address(arg1)].field_256:
                return 0, (accRewardPerShare * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_512
    if 0 == totalShares:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256, 
               (accRewardPerShare * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_512
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShares
        if userInfo[address(arg1)].field_256 > 0 / totalShares:
            revert with 0, 'SafeMath: subtraction overflow'
        return (0 / totalShares) - userInfo[address(arg1)].field_256, 
               (accRewardPerShare * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_512
    if (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 2 * ext_call.return_data[0] != userInfo[address(arg1)].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalShares <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalShares
    if userInfo[address(arg1)].field_256 > (ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / totalShares:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (ext_call.return_data[0] * userInfo[address(arg1)].field_0) / totalShares) - userInfo[address(arg1)].field_256, 
           (accRewardPerShare * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_512
}

function claim() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not userInfo[address(msg.sender)].field_0:
        if not userInfo[msg.sender].field_0:
            userInfo[msg.sender].field_512 = 0
        else:
            if accRewardPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accRewardPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            userInfo[msg.sender].field_512 = accRewardPerShare * userInfo[msg.sender].field_0 / 10^12
    else:
        if not userInfo[address(msg.sender)].field_0:
            if userInfo[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[address(msg.sender)].field_512:
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                else:
                    if accRewardPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    userInfo[msg.sender].field_512 = accRewardPerShare * userInfo[msg.sender].field_0 / 10^12
            else:
                if -userInfo[address(msg.sender)].field_512 > totalPendingReward:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalPendingReward += userInfo[address(msg.sender)].field_512
                mem[100] = this.address
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 132] = msg.sender
                if -userInfo[address(msg.sender)].field_512 <= ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 164] = -userInfo[address(msg.sender)].field_512
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, -userInfo[address(msg.sender)].field_512, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, -userInfo[address(msg.sender)].field_512, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, -userInfo[address(msg.sender)].field_512, 0) << 288)
                else:
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Claimed(-userInfo[address(msg.sender)].field_512, msg.sender);
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                else:
                    if accRewardPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accRewardPerShare:
                        revert with 0, 'SafeMath: multiplication overflow'
                    userInfo[msg.sender].field_512 = accRewardPerShare * userInfo[msg.sender].field_0 / 10^12
        else:
            if accRewardPerShare * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != accRewardPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(msg.sender)].field_512 > accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) - userInfo[address(msg.sender)].field_512:
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                else:
                    if accRewardPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    userInfo[msg.sender].field_512 = accRewardPerShare * userInfo[msg.sender].field_0 / 10^12
            else:
                if (accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) - userInfo[address(msg.sender)].field_512 > totalPendingReward:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalPendingReward = totalPendingReward - (accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) + userInfo[address(msg.sender)].field_512
                mem[100] = this.address
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 132] = msg.sender
                if (accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) - userInfo[address(msg.sender)].field_512 <= ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 164] = (accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) - userInfo[address(msg.sender)].field_512
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) - userInfo[address(msg.sender)].field_512, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) - userInfo[address(msg.sender)].field_512, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) - userInfo[address(msg.sender)].field_512, 0) << 288)
                else:
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Claimed(((accRewardPerShare * userInfo[address(msg.sender)].field_0 / 10^12) - userInfo[address(msg.sender)].field_512), msg.sender);
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                else:
                    if accRewardPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accRewardPerShare:
                        revert with 0, 'SafeMath: multiplication overflow'
                    userInfo[msg.sender].field_512 = accRewardPerShare * userInfo[msg.sender].field_0 / 10^12
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.sender != tx.origin:
        revert with 0, 'no contracts'
    require arg2 < lockInfo.length
    if lockInfo[arg2].field_0 < min_duration:
        revert with 0, 'minimum lock duration is 91 days'
    if lockInfo[arg2].field_0 > 35040 * 24 * 3600:
        revert with 0, 'maximum lock duration is 4 years'
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
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
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call tokenAddress with:
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
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(4 * ceil32(return_data.size)) + 296] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 == totalShares:
            if not userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_512 = 0
            else:
                if (ext_call.return_data[0] * accRewardPerShare) - (ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / userInfo[msg.sender].field_0 != accRewardPerShare:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[msg.sender].field_512 = (ext_call.return_data[0] * accRewardPerShare) - (ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / 10^12
        else:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            totalShares += 0 / 2 * ext_call.return_data[0]
            userInfo[msg.sender].field_0 += 0 / 2 * ext_call.return_data[0]
            if not (0 / 2 * ext_call.return_data[0]) + userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_512 = 0
            else:
                if (0 / 2 * ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / (0 / 2 * ext_call.return_data[0]) + userInfo[msg.sender].field_0 != accRewardPerShare:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[msg.sender].field_512 = (0 / 2 * ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / 10^12
        userInfo[msg.sender].field_768 = block.timestamp
        if lockInfo[arg2].field_0 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[msg.sender].field_1024 < lockInfo[arg2].field_0 + block.timestamp:
            userInfo[msg.sender].field_1024 = lockInfo[arg2].field_0 + block.timestamp
        userInfo[msg.sender].field_1280 = arg2
        mem[(6 * ceil32(return_data.size)) + 296] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 328] = strategyAddress
        mem[(7 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 292] = 68
        mem[(7 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
        mem[(7 * ceil32(return_data.size)) + 392] = 32
        mem[(7 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 456 len 96] = 0, strategyAddress, ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 524] = 0
        call tokenAddress with:
           funct Mask(32, 224, 0, strategyAddress, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, strategyAddress, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 488] == bool(mem[(7 * ceil32(return_data.size)) + 488])
                if not mem[(7 * ceil32(return_data.size)) + 488]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
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
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 == totalShares:
            if not userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_512 = 0
            else:
                if (ext_call.return_data[0] * accRewardPerShare) - (ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / userInfo[msg.sender].field_0 != accRewardPerShare:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[msg.sender].field_512 = (ext_call.return_data[0] * accRewardPerShare) - (ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / 10^12
        else:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            totalShares += 0 / 2 * ext_call.return_data[0]
            userInfo[msg.sender].field_0 += 0 / 2 * ext_call.return_data[0]
            if not (0 / 2 * ext_call.return_data[0]) + userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_512 = 0
            else:
                if (0 / 2 * ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / (0 / 2 * ext_call.return_data[0]) + userInfo[msg.sender].field_0 != accRewardPerShare:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[msg.sender].field_512 = (0 / 2 * ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / 10^12
        userInfo[msg.sender].field_768 = block.timestamp
        if lockInfo[arg2].field_0 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[msg.sender].field_1024 < lockInfo[arg2].field_0 + block.timestamp:
            userInfo[msg.sender].field_1024 = lockInfo[arg2].field_0 + block.timestamp
        userInfo[msg.sender].field_1280 = arg2
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = strategyAddress
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, strategyAddress, ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
        call tokenAddress with:
           funct Mask(32, 224, 0, strategyAddress, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, strategyAddress, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xd0e30db0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(0, userInfo[msg.sender].field_1024, msg.sender);
    stor1 = 1
}

function depositAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.sender != tx.origin:
        revert with 0, 'no contracts'
    require arg1 < lockInfo.length
    if lockInfo[arg1].field_0 < min_duration:
        revert with 0, 'minimum lock duration is 91 days'
    if lockInfo[arg1].field_0 > 35040 * 24 * 3600:
        revert with 0, 'maximum lock duration is 4 years'
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x722713f7 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 164] = this.address
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = 100
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + 228] = 32
    mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[(6 * ceil32(return_data.size)) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(6 * ceil32(return_data.size)) + 296] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 == totalShares:
            if not userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_512 = 0
            else:
                if (ext_call.return_data[0] * accRewardPerShare) - (ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / userInfo[msg.sender].field_0 != accRewardPerShare:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[msg.sender].field_512 = (ext_call.return_data[0] * accRewardPerShare) - (ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / 10^12
        else:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            totalShares += 0 / 2 * ext_call.return_data[0]
            userInfo[msg.sender].field_0 += 0 / 2 * ext_call.return_data[0]
            if not (0 / 2 * ext_call.return_data[0]) + userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_512 = 0
            else:
                if (0 / 2 * ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / (0 / 2 * ext_call.return_data[0]) + userInfo[msg.sender].field_0 != accRewardPerShare:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[msg.sender].field_512 = (0 / 2 * ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / 10^12
        userInfo[msg.sender].field_768 = block.timestamp
        if lockInfo[arg1].field_0 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[msg.sender].field_1024 < lockInfo[arg1].field_0 + block.timestamp:
            userInfo[msg.sender].field_1024 = lockInfo[arg1].field_0 + block.timestamp
        userInfo[msg.sender].field_1280 = arg1
        mem[(7 * ceil32(return_data.size)) + 296] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 328] = strategyAddress
        mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 292] = 68
        mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
        mem[(8 * ceil32(return_data.size)) + 392] = 32
        mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, strategyAddress, ext_call.return_data[0], 0
        mem[(8 * ceil32(return_data.size)) + 524] = 0
        call tokenAddress with:
           funct Mask(32, 224, 0, strategyAddress, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, strategyAddress, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                if not mem[(8 * ceil32(return_data.size)) + 488]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 292] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
            if not mem[(6 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 == totalShares:
            if not userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_512 = 0
            else:
                if (ext_call.return_data[0] * accRewardPerShare) - (ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / userInfo[msg.sender].field_0 != accRewardPerShare:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[msg.sender].field_512 = (ext_call.return_data[0] * accRewardPerShare) - (ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / 10^12
        else:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            totalShares += 0 / 2 * ext_call.return_data[0]
            userInfo[msg.sender].field_0 += 0 / 2 * ext_call.return_data[0]
            if not (0 / 2 * ext_call.return_data[0]) + userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_512 = 0
            else:
                if (0 / 2 * ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / (0 / 2 * ext_call.return_data[0]) + userInfo[msg.sender].field_0 != accRewardPerShare:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[msg.sender].field_512 = (0 / 2 * ext_call.return_data[0] * accRewardPerShare) + (userInfo[msg.sender].field_0 * accRewardPerShare) / 10^12
        userInfo[msg.sender].field_768 = block.timestamp
        if lockInfo[arg1].field_0 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[msg.sender].field_1024 < lockInfo[arg1].field_0 + block.timestamp:
            userInfo[msg.sender].field_1024 = lockInfo[arg1].field_0 + block.timestamp
        userInfo[msg.sender].field_1280 = arg1
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = strategyAddress
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, strategyAddress, ext_call.return_data[0], 0
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
        call tokenAddress with:
           funct Mask(32, 224, 0, strategyAddress, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, strategyAddress, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xd0e30db0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(0, userInfo[msg.sender].field_1024, msg.sender);
    stor1 = 1
}



}
