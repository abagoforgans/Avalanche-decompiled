contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - exit(uint256 arg1)
#
uint256 stor0;
uint8 stor1;
uint8 stor1; offset 8
address stakingTokenAddress; offset 16
uint256 stor1; offset 8
address REWARD_TOKENAddress;
address tokenAddress;
uint256 rewardRate;
uint256 rewardPerTokenStored;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 periodFinish;
mapping of uint256 userRewardPerTokenPaid;
mapping of struct rewards;
uint256 _totalSupply;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint256 _balances;
uint8 emergencyStop;

function rewards(address arg1) {
    require calldata.size - 4 >= 32
    return rewards[arg1].field_0
}

function sub_0ec6d58a(?) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function totalSupply() {
    return _totalSupply
}

function rewardsDuration() {
    return rewardsDuration
}

function _totalSupply() {
    return _totalSupply
}

function emergencyStop() {
    return bool(emergencyStop)
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
}

function stakingToken() {
    return stakingTokenAddress
}

function rewardRate() {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function REWARD_TOKEN() {
    return REWARD_TOKENAddress
}

function sub_b4f348ff(?) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function lastUpdateTime() {
    return lastUpdateTime
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function rewardPerTokenStored() {
    return rewardPerTokenStored
}

function periodFinish() {
    return periodFinish
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function panic() {
    if not stor12[msg.sender]:
        revert with 0, 'admin: wut?'
    emergencyStop = 1
    emit EmergencyWithdrawLp(1);
}

function updateAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor12[msg.sender]:
        revert with 0, 'admin: wut?'
    stor12[address(arg1)] = uint8(arg2)
}

function addWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender]:
        revert with 0, 'admin: wut?'
    stor13[address(arg1)] = 1
    emit AddWhiteListAddress(arg1);
}

function removeWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender]:
        revert with 0, 'admin: wut?'
    stor13[address(arg1)] = 0
    emit RemoveWhiteListAddress(arg1);
}

function addRewardsDistribution(address arg1) {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender]:
        revert with 0, 'admin: wut?'
    stor14[address(arg1)] = 1
    emit AddRewardsDistribution(arg1);
}

function removeRewardsDistribution(address arg1) {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender]:
        revert with 0, 'admin: wut?'
    stor14[address(arg1)] = 0
    emit RemoveRewardsDistribution(arg1);
}

function getRewardForDuration() {
    if not rewardRate:
        return 0
    if rewardsDuration * rewardRate / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rewardsDuration * rewardRate)
}

function setRewardsDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender]:
        revert with 0, 'admin: wut?'
    if periodFinish:
        if block.timestamp <= periodFinish:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        57,
                        0x77526577617264206475726174696f6e2063616e206f6e6c7920626520757064617465642061667465722074686520706572696f6420656e64,
                        mem[221 len 7]
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if uint8(stor1.field_8):
        REWARD_TOKENAddress = arg2
        stakingTokenAddress = arg1
        tokenAddress = arg3
        stor12[address(arg4)] = 1
        rewardsDuration = 168 * 24 * 3600
    else:
        if ext_code.size(this.address):
            if uint8(stor1.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor1.field_8):
            REWARD_TOKENAddress = arg2
            stakingTokenAddress = arg1
            tokenAddress = arg3
            stor12[address(arg4)] = 1
            rewardsDuration = 168 * 24 * 3600
        else:
            uint8(stor1.field_0) = 1
            uint8(stor1.field_8) = 1
            Mask(248, 0, stor1.field_8) = 0
            REWARD_TOKENAddress = arg2
            stakingTokenAddress = arg1
            tokenAddress = arg3
            stor12[address(arg4)] = 1
            rewardsDuration = 168 * 24 * 3600
            uint8(stor1.field_8) = 0
}

function rewardPerToken() {
    if 0 == _totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if _totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / _totalSupply) + rewardPerTokenStored)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if _totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / _totalSupply) + rewardPerTokenStored)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if _totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if _totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / _totalSupply) + rewardPerTokenStored)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if _totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / _totalSupply) + rewardPerTokenStored)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if _totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require _totalSupply
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored)
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    if 0 == _totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not _balances[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)].field_0 + ((rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18))
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if _totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / _totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _balances[address(arg1)]:
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)].field_0
            if (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18))
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if _totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require _totalSupply
            if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / _totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _balances[address(arg1)]:
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)].field_0
            if (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if _totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not _balances[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if _totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / _totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not _balances[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18))
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if _totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / _totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not _balances[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18))
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if _totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require _totalSupply
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow'
    if not _balances[address(arg1)]:
        if rewards[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)].field_0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if rewards[address(arg1)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18))
}

function notifyRewardAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor14[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7343616c6c6572206973206e6f742052657761726473446973747269627574696f6e20636f6e74726163,
                    mem[206 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(REWARD_TOKENAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call REWARD_TOKENAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if _totalSupply != 0:
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / _totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / _totalSupply
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp >= periodFinish:
            if rewardsDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardsDuration
            rewardRate = arg1 / rewardsDuration
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardsDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardsDuration
                rewardRate = arg1 / rewardsDuration
            else:
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardsDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardsDuration
                rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / rewardsDuration
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if _totalSupply != 0:
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / _totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / _totalSupply
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp >= periodFinish:
            if rewardsDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardsDuration
            rewardRate = arg1 / rewardsDuration
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardsDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardsDuration
                rewardRate = arg1 / rewardsDuration
            else:
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardsDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardsDuration
                rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / rewardsDuration
    require ext_code.size(REWARD_TOKENAddress)
    staticcall REWARD_TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardsDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rewardsDuration
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'Provided reward too high'
    lastUpdateTime = block.timestamp
    if rewardsDuration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = rewardsDuration + block.timestamp
    emit RewardAdded(arg1);
}

function sub_c7f2e10f(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if _totalSupply != 0:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if _totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if _totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if arg1:
        if 0 == _totalSupply:
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _balances[address(arg1)]:
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if rewards[address(arg1)].field_0 + ((rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                rewards[address(arg1)].field_0 += (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > (0 / _totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(arg1)]:
                        if rewards[address(arg1)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(arg1)].field_0 += (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)] > (0 / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(arg1)]:
                            if rewards[address(arg1)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(arg1)].field_0 += (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(arg1)]:
                            if rewards[address(arg1)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(arg1)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > (0 / _totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(arg1)]:
                        if rewards[address(arg1)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(arg1)].field_0 += (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)] > (0 / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(arg1)]:
                            if rewards[address(arg1)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(arg1)].field_0 + ((0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(arg1)].field_0 += (0 / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(arg1)]:
                            if rewards[address(arg1)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / _balances[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(arg1)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(arg1)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(arg1)]) + (rewardPerTokenStored * _balances[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * _balances[address(arg1)]) / 10^18
        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
    if not stor13[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x43616c6c6572206973206e6f742077686974656c697374656420636f6e7472616300,
                    mem[198 len 30]
    if emergencyStop:
        revert with 0, 'Emergency Stop'
    if arg2 <= 0:
        revert with 0, 'Cannot stake 0'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call stakingTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg2 + _totalSupply < _totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    _totalSupply += arg2
    if arg2 + _balances[address(arg1)] < _balances[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg1)] += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Staked(arg2, arg1);
    stor0 = 1
}

function getReward() {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if _totalSupply != 0:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if _totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if _totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == _totalSupply:
            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _balances[address(msg.sender)]:
                if rewards[address(msg.sender)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(msg.sender)].field_0 + ((0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + ((0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(msg.sender)].field_0 + ((0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + ((0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if rewards[msg.sender].field_0:
        rewards[msg.sender].field_0 = 0
        require ext_code.size(REWARD_TOKENAddress)
        staticcall REWARD_TOKENAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= rewards[msg.sender].field_0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(REWARD_TOKENAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, rewards[msg.sender].field_32
            mem[324 len 0] = 0
            call REWARD_TOKENAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args rewards[msg.sender].field_0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, rewards[msg.sender].field_0
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
    stor0 = 1
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if _totalSupply != 0:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if _totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if _totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / _totalSupply
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / _totalSupply
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == _totalSupply:
            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not _balances[address(msg.sender)]:
                if rewards[address(msg.sender)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(msg.sender)].field_0 + ((0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + ((0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - lastUpdateTime:
                    if _totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require _totalSupply
                    if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not _balances[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(msg.sender)].field_0 + ((0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if (0 / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != (0 / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + ((0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (0 / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if _totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require _totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not _balances[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / _balances[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / _totalSupply * _balances[address(msg.sender)]) + (rewardPerTokenStored * _balances[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * _balances[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if msg.sender != tx.origin:
        if not stor13[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x6c43616c6c6572206973206e6f7420454f41206f722077686974656c697374656420636f6e74726163,
                        mem[205 len 23]
    if emergencyStop:
        revert with 0, 'Emergency Stop'
    if arg1 <= 0:
        revert with 0, 'Cannot stake 0'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call stakingTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg1 + _totalSupply < _totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    _totalSupply += arg1
    if arg1 + _balances[msg.sender] < _balances[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[msg.sender] += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Staked(arg1, msg.sender);
    stor0 = 1
}



}
