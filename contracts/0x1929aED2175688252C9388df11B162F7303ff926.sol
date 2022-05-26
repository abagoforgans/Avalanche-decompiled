contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - getReward()
#  - sub_499e4b02(?)
#  - stake(uint256 arg1)
#  - exit()
#
const versionRecipient = ' '

const sub_5dcc9391(?) = (8760 * 24 * 3600)

const REWARD_DENOMINATOR = 10000


address owner;
address trustedForwarderAddress;
address stakeTokenAddress;
uint256 duration;
uint256 sub_ff378dd0;
uint256 totalSupply;
uint256 periodFinish;
uint256 rewardPercent;
uint8 stor8; offset 160
address rewardDistributionAddress;
mapping of struct userData;
mapping of struct sub_2ab767d2;

function duration() payable {
    return duration
}

function rewardDistribution() payable {
    return rewardDistributionAddress
}

function totalSupply() payable {
    return totalSupply
}

function sub_2ab767d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2ab767d2[address(arg1)].field_256
}

function stakeToken() payable {
    return stakeTokenAddress
}

function trustedForwarder() payable {
    return trustedForwarderAddress
}

function owner() payable {
    return owner
}

function isStakingStarted() payable {
    return bool(stor8)
}

function rewardPercent() payable {
    return rewardPercent
}

function sub_e454d080(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2ab767d2[address(arg1)].field_0
}

function periodFinish() payable {
    return periodFinish
}

function sub_ff378dd0(?) payable {
    return sub_ff378dd0
}

function getUserData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userData[address(arg1)].field_0, userData[address(arg1)].field_256, userData[address(arg1)].field_512
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == trustedForwarderAddress)
}

function sub_e9d354ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < sub_2ab767d2[address(arg1)].field_256:
        return 0
    return sub_2ab767d2[address(arg1)].field_0
}

function renounceOwnership() payable {
    if calldata.size < 24:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != owner:
                revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 24:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != owner:
                revert with 0, 'Ownable: caller is not the owner'
    rewardDistributionAddress = arg1
}

function sub_c31630a7(?) payable {
    if calldata.size < 24:
        if rewardDistributionAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    else:
        if trustedForwarderAddress != msg.sender:
            if rewardDistributionAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != rewardDistributionAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    periodFinish = block.timestamp
}

function sub_f5288a3b(?) payable {
    require calldata.size - 4 >= 32
    if calldata.size < 24:
        if rewardDistributionAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    else:
        if trustedForwarderAddress != msg.sender:
            if rewardDistributionAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != rewardDistributionAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    sub_ff378dd0 = cd[4]
}

function setRewardPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if calldata.size < 24:
        if rewardDistributionAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    else:
        if trustedForwarderAddress != msg.sender:
            if rewardDistributionAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != rewardDistributionAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    rewardPercent = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 24:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != owner:
                revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if calldata.size < 24:
        if rewardDistributionAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    else:
        if trustedForwarderAddress != msg.sender:
            if rewardDistributionAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != rewardDistributionAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    duration = arg1
    if arg1 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = arg1 + block.timestamp
}

function sub_88dbe3e1(?) payable {
    if calldata.size < 24:
        if rewardDistributionAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    else:
        if trustedForwarderAddress != msg.sender:
            if rewardDistributionAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != rewardDistributionAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    if block.timestamp < periodFinish:
        userData[0].field_512 = block.timestamp
    else:
        userData[0].field_512 = periodFinish
    if stor8:
        revert with 0, 'Staking is already started'
    stor8 = 1
    if duration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = duration + block.timestamp
    emit 0xacb909ab: (duration + block.timestamp)
}

function sub_6cb69b8a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if calldata.size < 24:
        if rewardDistributionAddress != msg.sender:
            revert with 0, 'Caller is not reward distribution'
    else:
        if trustedForwarderAddress != msg.sender:
            if rewardDistributionAddress != msg.sender:
                revert with 0, 'Caller is not reward distribution'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != rewardDistributionAddress:
                revert with 0, 'Caller is not reward distribution'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Input length invalid'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + userData[mem[(32 * idx) + 140 len 20]].field_256 < userData[mem[(32 * idx) + 140 len 20]].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        userData[mem[(32 * idx) + 140 len 20]].field_256 += mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        idx = idx + 1
        continue 
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < periodFinish:
        if userData[address(arg1)].field_512 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userData[address(arg1)].field_0:
            if userData[address(arg1)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return userData[address(arg1)].field_256
        if (block.timestamp * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0) / userData[address(arg1)].field_0 != block.timestamp - userData[address(arg1)].field_512:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0):
            if userData[address(arg1)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return userData[address(arg1)].field_256
        if (block.timestamp * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / (block.timestamp * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0) != rewardPercent:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if userData[address(arg1)].field_256 + ((block.timestamp * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (block.timestamp * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        return (userData[address(arg1)].field_256 + ((block.timestamp * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600))
    if userData[address(arg1)].field_512 > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userData[address(arg1)].field_0:
        if userData[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userData[address(arg1)].field_256
    if (periodFinish * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0) / userData[address(arg1)].field_0 != periodFinish - userData[address(arg1)].field_512:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0):
        if userData[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userData[address(arg1)].field_256
    if (periodFinish * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / (periodFinish * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0) != rewardPercent:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if userData[address(arg1)].field_256 + ((periodFinish * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (periodFinish * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    return (userData[address(arg1)].field_256 + ((periodFinish * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600))
}

function reinvestFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 24:
        if rewardDistributionAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    else:
        if trustedForwarderAddress != msg.sender:
            if rewardDistributionAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != rewardDistributionAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
    if arg1:
        if block.timestamp < periodFinish:
            if userData[address(arg1)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userData[address(arg1)].field_0:
                if userData[address(arg1)].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (block.timestamp * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0) / userData[address(arg1)].field_0 != block.timestamp - userData[address(arg1)].field_512:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0):
                    if userData[address(arg1)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / (block.timestamp * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0) != rewardPercent:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if userData[address(arg1)].field_256 + ((block.timestamp * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (block.timestamp * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
                        revert with 0, 'SafeMath: addition overflow'
                    userData[address(arg1)].field_256 += (block.timestamp * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600
        else:
            if userData[address(arg1)].field_512 > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userData[address(arg1)].field_0:
                if userData[address(arg1)].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (periodFinish * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0) / userData[address(arg1)].field_0 != periodFinish - userData[address(arg1)].field_512:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0):
                    if userData[address(arg1)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (periodFinish * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / (periodFinish * userData[address(arg1)].field_0) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0) != rewardPercent:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if userData[address(arg1)].field_256 + ((periodFinish * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (periodFinish * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
                        revert with 0, 'SafeMath: addition overflow'
                    userData[address(arg1)].field_256 += (periodFinish * userData[address(arg1)].field_0 * rewardPercent) - (userData[address(arg1)].field_512 * userData[address(arg1)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600
    if block.timestamp < periodFinish:
        userData[address(arg1)].field_512 = block.timestamp
    else:
        userData[address(arg1)].field_512 = periodFinish
    if userData[arg1].field_256:
        userData[address(arg1)].field_256 = 0
        if userData[arg1].field_256 + userData[address(arg1)].field_0 < userData[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userData[address(arg1)].field_0 += userData[arg1].field_256
        if userData[arg1].field_256 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += userData[arg1].field_256
        emit 0x8ee26b86: userData[arg1].field_256, arg1
}

function recoverExcessToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if calldata.size < 24:
        if rewardDistributionAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        if calldata.size < 24:
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call arg1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if trustedForwarderAddress != msg.sender:
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                call arg1 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, Mask(224, 32, arg2) >> 32
                mem[324 len 0] = 0
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, arg2
                    if not unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
    else:
        if trustedForwarderAddress != msg.sender:
            if rewardDistributionAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            if calldata.size < 24:
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                call arg1 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if trustedForwarderAddress != msg.sender:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, Mask(224, 32, arg2) >> 32
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != rewardDistributionAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not reward distribution'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            if calldata.size < 24:
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                mem[324 len 0] = 0
                call arg1 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if trustedForwarderAddress != msg.sender:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, Mask(224, 32, arg2) >> 32
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
    emit RecoverToken(arg1, arg2);
}

function reinvest() payable {
    if calldata.size < 24:
        if msg.sender:
            if block.timestamp < periodFinish:
                if userData[address(msg.sender)].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userData[address(msg.sender)].field_0:
                    if userData[address(msg.sender)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (block.timestamp * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0) / userData[address(msg.sender)].field_0 != block.timestamp - userData[address(msg.sender)].field_512:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0):
                        if userData[address(msg.sender)].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (block.timestamp * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / (block.timestamp * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0) != rewardPercent:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if userData[address(msg.sender)].field_256 + ((block.timestamp * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (block.timestamp * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
                            revert with 0, 'SafeMath: addition overflow'
                        userData[address(msg.sender)].field_256 += (block.timestamp * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600
            else:
                if userData[address(msg.sender)].field_512 > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userData[address(msg.sender)].field_0:
                    if userData[address(msg.sender)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (periodFinish * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0) / userData[address(msg.sender)].field_0 != periodFinish - userData[address(msg.sender)].field_512:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (periodFinish * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0):
                        if userData[address(msg.sender)].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (periodFinish * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / (periodFinish * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0) != rewardPercent:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if userData[address(msg.sender)].field_256 + ((periodFinish * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (periodFinish * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
                            revert with 0, 'SafeMath: addition overflow'
                        userData[address(msg.sender)].field_256 += (periodFinish * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600
        if block.timestamp < periodFinish:
            userData[address(msg.sender)].field_512 = block.timestamp
        else:
            userData[address(msg.sender)].field_512 = periodFinish
        if userData[msg.sender].field_256:
            userData[address(msg.sender)].field_256 = 0
            if userData[msg.sender].field_256 + userData[address(msg.sender)].field_0 < userData[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userData[address(msg.sender)].field_0 += userData[msg.sender].field_256
            if userData[msg.sender].field_256 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += userData[msg.sender].field_256
            emit 0x8ee26b86: userData[msg.sender].field_256, msg.sender
    else:
        if trustedForwarderAddress != msg.sender:
            if msg.sender:
                if block.timestamp < periodFinish:
                    if userData[address(msg.sender)].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userData[address(msg.sender)].field_0:
                        if userData[address(msg.sender)].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (block.timestamp * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0) / userData[address(msg.sender)].field_0 != block.timestamp - userData[address(msg.sender)].field_512:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0):
                            if userData[address(msg.sender)].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (block.timestamp * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / (block.timestamp * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0) != rewardPercent:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if userData[address(msg.sender)].field_256 + ((block.timestamp * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (block.timestamp * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
                                revert with 0, 'SafeMath: addition overflow'
                            userData[address(msg.sender)].field_256 += (block.timestamp * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600
                else:
                    if userData[address(msg.sender)].field_512 > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userData[address(msg.sender)].field_0:
                        if userData[address(msg.sender)].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (periodFinish * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0) / userData[address(msg.sender)].field_0 != periodFinish - userData[address(msg.sender)].field_512:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (periodFinish * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0):
                            if userData[address(msg.sender)].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (periodFinish * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / (periodFinish * userData[address(msg.sender)].field_0) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0) != rewardPercent:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if userData[address(msg.sender)].field_256 + ((periodFinish * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (periodFinish * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
                                revert with 0, 'SafeMath: addition overflow'
                            userData[address(msg.sender)].field_256 += (periodFinish * userData[address(msg.sender)].field_0 * rewardPercent) - (userData[address(msg.sender)].field_512 * userData[address(msg.sender)].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600
            if block.timestamp < periodFinish:
                userData[address(msg.sender)].field_512 = block.timestamp
            else:
                userData[address(msg.sender)].field_512 = periodFinish
            if userData[msg.sender].field_256:
                userData[address(msg.sender)].field_256 = 0
                if userData[msg.sender].field_256 + userData[address(msg.sender)].field_0 < userData[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userData[address(msg.sender)].field_0 += userData[msg.sender].field_256
                if userData[msg.sender].field_256 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += userData[msg.sender].field_256
                emit 0x8ee26b86: userData[msg.sender].field_256, msg.sender
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]):
                if block.timestamp < periodFinish:
                    if userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                        if userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (block.timestamp * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) / userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 != block.timestamp - userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
                            if userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (block.timestamp * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) / (block.timestamp * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) != rewardPercent:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 + ((block.timestamp * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (block.timestamp * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
                                revert with 0, 'SafeMath: addition overflow'
                            userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 += (block.timestamp * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600
                else:
                    if userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                        if userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (periodFinish * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) / userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 != periodFinish - userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (periodFinish * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
                            if userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (periodFinish * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) / (periodFinish * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0) != rewardPercent:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 + ((periodFinish * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600) < (periodFinish * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600:
                                revert with 0, 'SafeMath: addition overflow'
                            userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 += (periodFinish * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) - (userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 * userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 * rewardPercent) / 10000 / 8760 * 24 * 3600
            if block.timestamp < periodFinish:
                userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 = block.timestamp
            else:
                userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_512 = periodFinish
            if userData[Mask(64, 96, cd[(calldata.size - 20)]) >> 96].field_256:
                userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_256 = 0
                if userData[Mask(64, 96, cd[(calldata.size - 20)]) >> 96].field_256 + userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 < userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 += userData[Mask(64, 96, cd[(calldata.size - 20)]) >> 96].field_256
                if userData[Mask(64, 96, cd[(calldata.size - 20)]) >> 96].field_256 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += userData[Mask(64, 96, cd[(calldata.size - 20)]) >> 96].field_256
                emit 0x8ee26b86: userData[Mask(64, 96, cd[(calldata.size - 20)]) >> 96].field_256, Mask(64, 96, cd[(calldata.size - 20)]) >> 96
}



}
