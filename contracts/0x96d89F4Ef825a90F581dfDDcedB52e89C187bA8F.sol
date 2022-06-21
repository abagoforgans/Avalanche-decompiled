contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - stake(uint256 arg1)
#  - exit()
#
const SAFE_MULTIPLIER = 10^18


uint256 stor0;
uint8 stor1; offset 160
address owner;
address stakedTokenAddress;
address rewardsTokenAddress;
address rewardsManagerAddress;
uint256 sub_c8dc6bc7;
uint256 stor6;
uint256 stor7;
uint256 totalStaked;
uint256 unlockTime;
uint256 sub_f93ea586;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024,
           userInfo[arg1].field_1280
}

function unlockTime() payable {
    return unlockTime
}

function totalStakedTokens() payable {
    return totalStaked
}

function paused() payable {
    return bool(stor1)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[address(arg1)].field_0
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function sub_c8dc6bc7(?) payable {
    return sub_c8dc6bc7
}

function stakedToken() payable {
    return stakedTokenAddress
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function rewardsManager() payable {
    return rewardsManagerAddress
}

function sub_f93ea586(?) payable {
    return sub_f93ea586
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

function updateUnlockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unlockTime = arg1
}

function updateRelockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f93ea586 = arg1
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

function activateUnlockTime() payable {
    if stor1:
        revert with 0, 'Pausable: paused'
    if block.timestamp <= userInfo[msg.sender].field_1024:
        revert with 0, 'Unlock time still in progress'
    userInfo[msg.sender].field_1024 = block.timestamp + (60 * unlockTime)
    userInfo[msg.sender].field_1280 = block.timestamp + (60 * sub_f93ea586) + (60 * unlockTime)
    emit ActivateUnlock(msg.sender);
}

function updateRewardsDistributionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalStaked:
        if stor7 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if stor6 + (0 / totalStaked) < 0 / totalStaked:
                revert with 0, 'SafeMath: addition overflow'
            stor6 += 0 / totalStaked
        else:
            if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if stor6 + (0 / totalStaked) < 0 / totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                stor6 += 0 / totalStaked
            else:
                if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                stor6 += (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked
    stor7 = block.number
    sub_c8dc6bc7 = arg1
}

function rewardsEarned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalStaked <= 0:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 / 10^18)
        if sub_c8dc6bc7 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_c8dc6bc7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > sub_c8dc6bc7 * userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + (sub_c8dc6bc7 * userInfo[address(arg1)].field_0) - userInfo[address(arg1)].field_256 / 10^18)
    if stor7 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stor7:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if stor6 + (0 / totalStaked) < 0 / totalStaked:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 / 10^18)
        if (stor6 * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor6 + (0 / totalStaked):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (stor6 * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0):
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + (stor6 * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) - userInfo[address(arg1)].field_256 / 10^18)
    if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if stor6 + (0 / totalStaked) < 0 / totalStaked:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 / 10^18)
        if (stor6 * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor6 + (0 / totalStaked):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (stor6 * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0):
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + (stor6 * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) - userInfo[address(arg1)].field_256 / 10^18)
    if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 / 10^18)
    if (stor6 * userInfo[address(arg1)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[address(arg1)].field_256 > (stor6 * userInfo[address(arg1)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(arg1)].field_0):
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[address(arg1)].field_512 + (stor6 * userInfo[address(arg1)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(arg1)].field_0) - userInfo[address(arg1)].field_256 / 10^18)
}

function redeemRewards() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor1:
        revert with 0, 'Pausable: paused'
    if unlockTime != 0:
        if not userInfo[address(msg.sender)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Activate unlock for withdrawal and redemption window first'
        if block.timestamp <= userInfo[address(msg.sender)].field_1024:
            revert with 0, 'Unlock time still in progress'
        if block.timestamp >= userInfo[address(msg.sender)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdraw and redemption window has passed'
    if totalStaked <= 0:
        if not userInfo[address(msg.sender)].field_0:
            if userInfo[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < -userInfo[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18:
                userInfo[msg.sender].field_512 = 0
                if (userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18) + userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_768 += userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18
                if totalStaked <= 0:
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if sub_c8dc6bc7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_c8dc6bc7:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        userInfo[msg.sender].field_256 = sub_c8dc6bc7 * userInfo[msg.sender].field_0
                else:
                    if stor7 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - stor7:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if stor6 + (0 / totalStaked) < 0 / totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                    else:
                        if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                        else:
                            if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0)
                require ext_code.size(rewardsManagerAddress)
                call rewardsManagerAddress.0xc53a3153 with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardRedeemed((userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18), msg.sender);
        else:
            if sub_c8dc6bc7 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != sub_c8dc6bc7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(msg.sender)].field_256 > sub_c8dc6bc7 * userInfo[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(msg.sender)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userInfo[address(msg.sender)].field_512 + (sub_c8dc6bc7 * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18:
                userInfo[msg.sender].field_512 = 0
                if (userInfo[address(msg.sender)].field_512 + (sub_c8dc6bc7 * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18) + userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_768 += userInfo[address(msg.sender)].field_512 + (sub_c8dc6bc7 * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18
                if totalStaked <= 0:
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if sub_c8dc6bc7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_c8dc6bc7:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        userInfo[msg.sender].field_256 = sub_c8dc6bc7 * userInfo[msg.sender].field_0
                else:
                    if stor7 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - stor7:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if stor6 + (0 / totalStaked) < 0 / totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                    else:
                        if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                        else:
                            if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0)
                require ext_code.size(rewardsManagerAddress)
                call rewardsManagerAddress.0xc53a3153 with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_512 + (sub_c8dc6bc7 * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardRedeemed((userInfo[address(msg.sender)].field_512 + (sub_c8dc6bc7 * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18), msg.sender);
    else:
        if stor7 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if stor6 + (0 / totalStaked) < 0 / totalStaked:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(msg.sender)].field_0:
                if userInfo[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < -userInfo[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18:
                    userInfo[msg.sender].field_512 = 0
                    if (userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18) + userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_768 += userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18
                    if totalStaked <= 0:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if sub_c8dc6bc7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_c8dc6bc7:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            userInfo[msg.sender].field_256 = sub_c8dc6bc7 * userInfo[msg.sender].field_0
                    else:
                        if stor7 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                        else:
                            if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                            else:
                                if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0)
                    require ext_code.size(rewardsManagerAddress)
                    call rewardsManagerAddress.0xc53a3153 with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit RewardRedeemed((userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18), msg.sender);
            else:
                if (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) / userInfo[address(msg.sender)].field_0 != stor6 + (0 / totalStaked):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(msg.sender)].field_256 > (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(msg.sender)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18:
                    userInfo[msg.sender].field_512 = 0
                    if (userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18) + userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_768 += userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18
                    if totalStaked <= 0:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if sub_c8dc6bc7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_c8dc6bc7:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            userInfo[msg.sender].field_256 = sub_c8dc6bc7 * userInfo[msg.sender].field_0
                    else:
                        if stor7 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                        else:
                            if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                            else:
                                if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0)
                    require ext_code.size(rewardsManagerAddress)
                    call rewardsManagerAddress.0xc53a3153 with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit RewardRedeemed((userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18), msg.sender);
        else:
            if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if stor6 + (0 / totalStaked) < 0 / totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(msg.sender)].field_0:
                    if userInfo[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < -userInfo[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18:
                        userInfo[msg.sender].field_512 = 0
                        if (userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18) + userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_768 += userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18
                        if totalStaked <= 0:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if sub_c8dc6bc7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_c8dc6bc7:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = sub_c8dc6bc7 * userInfo[msg.sender].field_0
                        else:
                            if stor7 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                            else:
                                if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                                else:
                                    if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0)
                        require ext_code.size(rewardsManagerAddress)
                        call rewardsManagerAddress.0xc53a3153 with:
                             gas gas_remaining wei
                            args msg.sender, userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit RewardRedeemed((userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18), msg.sender);
                else:
                    if (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) / userInfo[address(msg.sender)].field_0 != stor6 + (0 / totalStaked):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[address(msg.sender)].field_256 > (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[address(msg.sender)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18:
                        userInfo[msg.sender].field_512 = 0
                        if (userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18) + userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_768 += userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18
                        if totalStaked <= 0:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if sub_c8dc6bc7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_c8dc6bc7:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = sub_c8dc6bc7 * userInfo[msg.sender].field_0
                        else:
                            if stor7 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                            else:
                                if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                                else:
                                    if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0)
                        require ext_code.size(rewardsManagerAddress)
                        call rewardsManagerAddress.0xc53a3153 with:
                             gas gas_remaining wei
                            args msg.sender, userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit RewardRedeemed((userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + (0 / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18), msg.sender);
            else:
                if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(msg.sender)].field_0:
                    if userInfo[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < -userInfo[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18:
                        userInfo[msg.sender].field_512 = 0
                        if (userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18) + userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_768 += userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18
                        if totalStaked <= 0:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if sub_c8dc6bc7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_c8dc6bc7:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = sub_c8dc6bc7 * userInfo[msg.sender].field_0
                        else:
                            if stor7 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                            else:
                                if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                                else:
                                    if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0)
                        require ext_code.size(rewardsManagerAddress)
                        call rewardsManagerAddress.0xc53a3153 with:
                             gas gas_remaining wei
                            args msg.sender, userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit RewardRedeemed((userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 / 10^18), msg.sender);
                else:
                    if (stor6 * userInfo[address(msg.sender)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(msg.sender)].field_0) / userInfo[address(msg.sender)].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[address(msg.sender)].field_256 > (stor6 * userInfo[address(msg.sender)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(msg.sender)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[address(msg.sender)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18:
                        userInfo[msg.sender].field_512 = 0
                        if (userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18) + userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_768 += userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18
                        if totalStaked <= 0:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if sub_c8dc6bc7 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_c8dc6bc7:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[msg.sender].field_256 = sub_c8dc6bc7 * userInfo[msg.sender].field_0
                        else:
                            if stor7 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                            else:
                                if (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) / block.number - stor7 != sub_c8dc6bc7:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7):
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if stor6 + (0 / totalStaked) < 0 / totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + (0 / totalStaked):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + (0 / totalStaked * userInfo[msg.sender].field_0)
                                else:
                                    if (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / (block.number * sub_c8dc6bc7) - (stor7 * sub_c8dc6bc7) != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked) < (10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_0 != stor6 + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        userInfo[msg.sender].field_256 = (stor6 * userInfo[msg.sender].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[msg.sender].field_0)
                        require ext_code.size(rewardsManagerAddress)
                        call rewardsManagerAddress.0xc53a3153 with:
                             gas gas_remaining wei
                            args msg.sender, userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit RewardRedeemed((userInfo[address(msg.sender)].field_512 + (stor6 * userInfo[address(msg.sender)].field_0) + ((10^18 * block.number * sub_c8dc6bc7) - (10^18 * stor7 * sub_c8dc6bc7) / totalStaked * userInfo[address(msg.sender)].field_0) - userInfo[address(msg.sender)].field_256 / 10^18), msg.sender);
    stor0 = 1
}



}
