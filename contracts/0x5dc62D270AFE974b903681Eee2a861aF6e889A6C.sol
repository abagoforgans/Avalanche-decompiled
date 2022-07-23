contract main {




// =====================  Runtime code  =====================


#
#  - claimReward(address arg1)
#
const VERSION = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address poolAddress;
array of struct rewardTokens;
mapping of uint8 stor4;
mapping of uint256 periodFinish;
mapping of uint256 sub_3d3b2603;
mapping of uint256 sub_e9c54488;
mapping of uint256 lastUpdateTime;
mapping of uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;

function pool() payable {
    return poolAddress
}

function lastUpdateTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastUpdateTime[arg1]
}

function sub_3d3b2603(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3d3b2603[arg1]
}

function userRewardPerTokenPaid(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userRewardPerTokenPaid[arg1][arg2]
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1].field_0
}

function rewardPerTokenStored(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardPerTokenStored[arg1]
}

function isRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function periodFinish(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFinish[arg1]
}

function rewards(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return rewards[arg1][arg2]
}

function sub_e9c54488(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e9c54488[arg1]
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < periodFinish[address(arg1)]:
        return block.timestamp
    return periodFinish[address(arg1)]
}

function addRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-authorized'
    if not arg1:
        revert with 0, 'reward-token-address-zero'
    if stor4[address(arg1)]:
        revert with 0, 'reward-token-already-exist'
    idx = 0
    s = ceil32(return_data.size) + 160
    t = 0
    while idx < rewardTokens.length:
        mem[s] = rewardTokens[t].field_0
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    emit RewardTokenAdded(Array(len=rewardTokens.length, data=mem[ceil32(return_data.size) + 160 len 32 * rewardTokens.length]), arg1);
    rewardTokens.length++
    rewardTokens[rewardTokens.length].field_0 = arg1
    stor4[address(arg1)] = 1
}

function getRewardTokens() payable {
    mem[64] = (32 * rewardTokens.length) + 128
    mem[96] = rewardTokens.length
    if not rewardTokens.length:
        mem[(32 * rewardTokens.length) + 128] = 32
        mem[(32 * rewardTokens.length) + 160] = rewardTokens.length
        idx = 0
        s = 128
        t = (32 * rewardTokens.length) + 192
        while idx < rewardTokens.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * rewardTokens.length) + 128
           len (96 * rewardTokens.length) + 64
    mem[128] = address(rewardTokens.field_0)
    idx = 128
    s = 0
    while (32 * rewardTokens.length) + 96 > idx:
        mem[idx + 32] = rewardTokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * rewardTokens.length) + 128] = 32
    mem[(32 * rewardTokens.length) + 160] = rewardTokens.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < rewardTokens.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * rewardTokens.length) + -mem[64] + 192
}

function initialize(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'pool-address-is-zero'
    if not arg2.length:
        revert with 0, 'invalid-reward-tokens'
    poolAddress = arg1
    rewardTokens.length = arg2.length
    if not arg2.length:
        idx = 0
        while rewardTokens.length > idx:
            rewardTokens[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            rewardTokens[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while rewardTokens.length > idx:
            rewardTokens[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function notifyRewardAmount(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-authorized'
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        revert with 0, 'incorrect-reward-token'
    if not arg2:
        revert with 0, 'incorrect-reward-amount'
    if not arg3:
        revert with 0, 'incorrect-reward-duration'
    if not stor4[address(arg1)]:
        revert with 0, 'invalid-reward-token'
    if ext_call.return_data[0]:
        if block.timestamp < periodFinish[address(arg1)]:
            if block.timestamp < lastUpdateTime[address(arg1)]:
                revert with 0, 17
            if block.timestamp - lastUpdateTime[address(arg1)] and sub_3d3b2603[address(arg1)] > -1 / block.timestamp - lastUpdateTime[address(arg1)]:
                revert with 0, 17
            if (block.timestamp * sub_3d3b2603[address(arg1)]) - (lastUpdateTime[address(arg1)] * sub_3d3b2603[address(arg1)]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored[address(arg1)] > !((10^18 * block.timestamp * sub_3d3b2603[address(arg1)]) - (10^18 * lastUpdateTime[address(arg1)] * sub_3d3b2603[address(arg1)]) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored[address(arg1)] += (10^18 * block.timestamp * sub_3d3b2603[address(arg1)]) - (10^18 * lastUpdateTime[address(arg1)] * sub_3d3b2603[address(arg1)]) / ext_call.return_data[0]
        else:
            if periodFinish[address(arg1)] < lastUpdateTime[address(arg1)]:
                revert with 0, 17
            if periodFinish[address(arg1)] - lastUpdateTime[address(arg1)] and sub_3d3b2603[address(arg1)] > -1 / periodFinish[address(arg1)] - lastUpdateTime[address(arg1)]:
                revert with 0, 17
            if (periodFinish[address(arg1)] * sub_3d3b2603[address(arg1)]) - (lastUpdateTime[address(arg1)] * sub_3d3b2603[address(arg1)]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored[address(arg1)] > !((10^18 * periodFinish[address(arg1)] * sub_3d3b2603[address(arg1)]) - (10^18 * lastUpdateTime[address(arg1)] * sub_3d3b2603[address(arg1)]) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored[address(arg1)] += (10^18 * periodFinish[address(arg1)] * sub_3d3b2603[address(arg1)]) - (10^18 * lastUpdateTime[address(arg1)] * sub_3d3b2603[address(arg1)]) / ext_call.return_data[0]
    if block.timestamp >= periodFinish[address(arg1)]:
        if not arg3:
            revert with 0, 18
        sub_3d3b2603[address(arg1)] = arg2 / arg3
    else:
        if periodFinish[address(arg1)] < block.timestamp:
            revert with 0, 17
        if periodFinish[address(arg1)] - block.timestamp and sub_3d3b2603[address(arg1)] > -1 / periodFinish[address(arg1)] - block.timestamp:
            revert with 0, 17
        if arg2 > !((periodFinish[address(arg1)] * sub_3d3b2603[address(arg1)]) - (block.timestamp * sub_3d3b2603[address(arg1)])):
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        sub_3d3b2603[address(arg1)] = arg2 + (periodFinish[address(arg1)] * sub_3d3b2603[address(arg1)]) - (block.timestamp * sub_3d3b2603[address(arg1)]) / arg3
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        revert with 0, 18
    if sub_3d3b2603[address(arg1)] > ext_call.return_data[0] / arg3:
        revert with 0, 'rewards-too-high'
    sub_e9c54488[address(arg1)] = arg3
    lastUpdateTime[address(arg1)] = block.timestamp
    if block.timestamp > !arg3:
        revert with 0, 17
    periodFinish[address(arg1)] = block.timestamp + arg3
    emit RewardAdded(arg2, arg3, arg1);
}

function rewardForDuration() payable {
    if rewardTokens.length > test266151307():
        revert with 0, 65
    mem[96] = rewardTokens.length
    if not rewardTokens.length:
        idx = 0
        while idx < rewardTokens.length:
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 6
            if sub_3d3b2603[stor3[idx].field_0] and sub_e9c54488[stor3[idx].field_0] > -1 / sub_3d3b2603[stor3[idx].field_0]:
                revert with 0, 17
            if idx >= rewardTokens.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = sub_3d3b2603[stor3[idx].field_0] * sub_e9c54488[stor3[idx].field_0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = (64 * rewardTokens.length) + 160
        mem[(32 * rewardTokens.length) + 128] = rewardTokens.length
        if not rewardTokens.length:
            mem[(64 * rewardTokens.length) + 160] = 64
            mem[(64 * rewardTokens.length) + 224] = rewardTokens.length
            idx = 0
            s = (32 * rewardTokens.length) + 160
            t = mem[64] + 96
            while idx < rewardTokens.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * rewardTokens.length) + 192] = (32 * rewardTokens.length) + 96
            mem[(98 * rewardTokens.length) + 256] = mem[96]
            mem[(98 * rewardTokens.length) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            var18001 = mem[96]
        else:
            mem[(32 * rewardTokens.length) + 160] = address(rewardTokens.field_0)
            idx = (32 * rewardTokens.length) + 160
            s = 0
            while (64 * rewardTokens.length) + 128 > idx:
                mem[idx + 32] = rewardTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(64 * rewardTokens.length) + 160] = 64
            mem[(64 * rewardTokens.length) + 224] = rewardTokens.length
            idx = 0
            s = (32 * rewardTokens.length) + 160
            t = mem[64] + 96
            while idx < rewardTokens.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * rewardTokens.length) + 192] = (32 * rewardTokens.length) + 96
            mem[(98 * rewardTokens.length) + 256] = mem[96]
            mem[(98 * rewardTokens.length) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    else:
        mem[128 len 32 * rewardTokens.length] = call.data[calldata.size len 32 * rewardTokens.length]
        idx = 0
        while idx < rewardTokens.length:
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 6
            if sub_3d3b2603[stor3[idx].field_0] and sub_e9c54488[stor3[idx].field_0] > -1 / sub_3d3b2603[stor3[idx].field_0]:
                revert with 0, 17
            if idx >= rewardTokens.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = sub_3d3b2603[stor3[idx].field_0] * sub_e9c54488[stor3[idx].field_0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = (64 * rewardTokens.length) + 160
        mem[(32 * rewardTokens.length) + 128] = rewardTokens.length
        if not rewardTokens.length:
            mem[(64 * rewardTokens.length) + 160] = 64
            mem[(64 * rewardTokens.length) + 224] = rewardTokens.length
            idx = 0
            s = (32 * rewardTokens.length) + 160
            t = mem[64] + 96
            while idx < rewardTokens.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * rewardTokens.length) + 192] = (32 * rewardTokens.length) + 96
            mem[(98 * rewardTokens.length) + 256] = mem[96]
            mem[(98 * rewardTokens.length) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            var19001 = mem[96]
        else:
            mem[(32 * rewardTokens.length) + 160] = address(rewardTokens.field_0)
            idx = (32 * rewardTokens.length) + 160
            s = 0
            while (64 * rewardTokens.length) + 128 > idx:
                mem[idx + 32] = rewardTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(64 * rewardTokens.length) + 160] = 64
            mem[(64 * rewardTokens.length) + 224] = rewardTokens.length
            idx = 0
            s = (32 * rewardTokens.length) + 160
            t = mem[64] + 96
            while idx < rewardTokens.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * rewardTokens.length) + 192] = (32 * rewardTokens.length) + 96
            mem[(98 * rewardTokens.length) + 256] = mem[96]
            mem[(98 * rewardTokens.length) + 288 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return memory
      from mem[64]
       len (98 * rewardTokens.length) + (32 * mem[96]) + -mem[64] + 288
}

function rewardPerToken() payable {
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardTokens.length > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = rewardTokens.length
    if rewardTokens.length:
        mem[ceil32(return_data.size) + 128 len 32 * rewardTokens.length] = call.data[calldata.size len 32 * rewardTokens.length]
    idx = 0
    while idx < rewardTokens.length:
        if not ext_call.return_data[0]:
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 9
            if idx >= rewardTokens.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = rewardPerTokenStored[stor3[idx].field_0]
        else:
            if block.timestamp < periodFinish[stor3[idx].field_0]:
                if block.timestamp < lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / block.timestamp - lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if (block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 9
                if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                    revert with 0, 17
                if idx >= rewardTokens.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0])
            else:
                if periodFinish[stor3[idx].field_0] < lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if (periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 9
                if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                    revert with 0, 17
                if idx >= rewardTokens.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[64] = ceil32(return_data.size) + (64 * rewardTokens.length) + 160
    mem[ceil32(return_data.size) + (32 * rewardTokens.length) + 128] = rewardTokens.length
    if rewardTokens.length:
        mem[ceil32(return_data.size) + (32 * rewardTokens.length) + 160] = address(rewardTokens.field_0)
        idx = ceil32(return_data.size) + (32 * rewardTokens.length) + 160
        s = 0
        while ceil32(return_data.size) + (64 * rewardTokens.length) + 128 > idx:
            mem[idx + 32] = rewardTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[ceil32(return_data.size) + (64 * rewardTokens.length) + 160] = 64
    mem[ceil32(return_data.size) + (64 * rewardTokens.length) + 224] = rewardTokens.length
    idx = 0
    s = ceil32(return_data.size) + (32 * rewardTokens.length) + 160
    t = mem[64] + 96
    while idx < rewardTokens.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + (64 * rewardTokens.length) + 192] = (32 * rewardTokens.length) + 96
    mem[ceil32(return_data.size) + (98 * rewardTokens.length) + 256] = mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + (98 * rewardTokens.length) + 288 len 32 * mem[ceil32(return_data.size) + 96]] = mem[ceil32(return_data.size) + 128 len 32 * mem[ceil32(return_data.size) + 96]]
    return memory
      from mem[64]
       len ceil32(return_data.size) + (98 * rewardTokens.length) + (32 * mem[ceil32(return_data.size) + 96]) + -mem[64] + 288
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardTokens.length > test266151307():
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 96] = rewardTokens.length
    if rewardTokens.length:
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * rewardTokens.length] = call.data[calldata.size len 32 * rewardTokens.length]
    idx = 0
    while idx < rewardTokens.length:
        if not ext_call.return_data[0]:
            if rewardPerTokenStored[stor3[idx].field_0] < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                revert with 0, 17
            if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = sha3(rewardTokens[idx].field_0, 11)
            if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                revert with 0, 17
            if idx >= rewardTokens.length:
                revert with 0, 50
            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = rewards[stor3[idx].field_0][address(arg1)] + ((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18)
        else:
            if block.timestamp < periodFinish[stor3[idx].field_0]:
                if block.timestamp < lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / block.timestamp - lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if (block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                    revert with 0, 17
                if rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = sha3(rewardTokens[idx].field_0, 11)
                if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                    revert with 0, 17
                if idx >= rewardTokens.length:
                    revert with 0, 50
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = rewards[stor3[idx].field_0][address(arg1)] + ((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18)
            else:
                if periodFinish[stor3[idx].field_0] < lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if (periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                    revert with 0, 17
                if rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = sha3(rewardTokens[idx].field_0, 11)
                if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                    revert with 0, 17
                if idx >= rewardTokens.length:
                    revert with 0, 50
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = rewards[stor3[idx].field_0][address(arg1)] + ((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[64] = (2 * ceil32(return_data.size)) + (64 * rewardTokens.length) + 160
    mem[(2 * ceil32(return_data.size)) + (32 * rewardTokens.length) + 128] = rewardTokens.length
    if rewardTokens.length:
        mem[(2 * ceil32(return_data.size)) + (32 * rewardTokens.length) + 160] = address(rewardTokens.field_0)
        idx = (2 * ceil32(return_data.size)) + (32 * rewardTokens.length) + 160
        s = 0
        while (2 * ceil32(return_data.size)) + (64 * rewardTokens.length) + 128 > idx:
            mem[idx + 32] = rewardTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(2 * ceil32(return_data.size)) + (64 * rewardTokens.length) + 160] = 64
    mem[(2 * ceil32(return_data.size)) + (64 * rewardTokens.length) + 224] = rewardTokens.length
    idx = 0
    s = (2 * ceil32(return_data.size)) + (32 * rewardTokens.length) + 160
    t = mem[64] + 96
    while idx < rewardTokens.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + (64 * rewardTokens.length) + 192] = (32 * rewardTokens.length) + 96
    mem[(2 * ceil32(return_data.size)) + (98 * rewardTokens.length) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
    mem[(2 * ceil32(return_data.size)) + (98 * rewardTokens.length) + 288 len 32 * mem[(2 * ceil32(return_data.size)) + 96]] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * mem[(2 * ceil32(return_data.size)) + 96]]
    return memory
      from mem[64]
       len (2 * ceil32(return_data.size)) + (98 * rewardTokens.length) + (32 * mem[(2 * ceil32(return_data.size)) + 96]) + -mem[64] + 288
}

function sub_bcd68eb6(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(poolAddress)
    staticcall poolAddress.governor() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-authorized'
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 99
    require return_data.size >= 32
    if not ('cd', 4).length:
        revert with 0, 'invalid-reward-tokens'
    if not ('cd', 36).length:
        revert with 0, 'invalid-reward-amounts'
    if not ('cd', 68).length:
        revert with 0, 'invalid-reward-durations'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'array-length-mismatch'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'array-length-mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _552 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _554 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        _556 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'incorrect-reward-token'
        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 'incorrect-reward-amount'
        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
            revert with 0, 'incorrect-reward-duration'
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'invalid-reward-token'
        if not ext_call.return_data[0]:
            if block.timestamp >= periodFinish[address(mem[(32 * idx) + 128])]:
                if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                    revert with 0, 18
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 6
                sub_3d3b2603[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_552))
                staticcall address(_552).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _579 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _556:
                    revert with 0, 18
                if sub_3d3b2603[address(_552)] > mem[_579] / _556:
                    revert with 0, 'rewards-too-high'
            else:
                if periodFinish[address(mem[(32 * idx) + 128])] < block.timestamp:
                    revert with 0, 17
                if periodFinish[address(mem[(32 * idx) + 128])] - block.timestamp and sub_3d3b2603[address(mem[(32 * idx) + 128])] > -1 / periodFinish[address(mem[(32 * idx) + 128])] - block.timestamp:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] > !((periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])])):
                    revert with 0, 17
                if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                    revert with 0, 18
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 6
                sub_3d3b2603[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + (periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])]) / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_552))
                staticcall address(_552).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _595 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _556:
                    revert with 0, 18
                if sub_3d3b2603[address(_552)] > mem[_595] / _556:
                    revert with 0, 'rewards-too-high'
        else:
            if block.timestamp < periodFinish[address(mem[(32 * idx) + 128])]:
                if block.timestamp < lastUpdateTime[address(mem[(32 * idx) + 128])]:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime[address(mem[(32 * idx) + 128])] and sub_3d3b2603[address(mem[(32 * idx) + 128])] > -1 / block.timestamp - lastUpdateTime[address(mem[(32 * idx) + 128])]:
                    revert with 0, 17
                if (block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (lastUpdateTime[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored[address(mem[(32 * idx) + 128])] > !((10^18 * block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (10^18 * lastUpdateTime[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) / ext_call.return_data[0]):
                    revert with 0, 17
                rewardPerTokenStored[address(mem[(32 * idx) + 128])] += (10^18 * block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (10^18 * lastUpdateTime[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) / ext_call.return_data[0]
                if block.timestamp >= periodFinish[address(mem[(32 * idx) + 128])]:
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        revert with 0, 18
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 6
                    sub_3d3b2603[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_552))
                    staticcall address(_552).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _615 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not _556:
                        revert with 0, 18
                    if sub_3d3b2603[address(_552)] > mem[_615] / _556:
                        revert with 0, 'rewards-too-high'
                else:
                    if periodFinish[address(mem[(32 * idx) + 128])] < block.timestamp:
                        revert with 0, 17
                    if periodFinish[address(mem[(32 * idx) + 128])] - block.timestamp and sub_3d3b2603[address(mem[(32 * idx) + 128])] > -1 / periodFinish[address(mem[(32 * idx) + 128])] - block.timestamp:
                        revert with 0, 17
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] > !((periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])])):
                        revert with 0, 17
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        revert with 0, 18
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 6
                    sub_3d3b2603[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + (periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])]) / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_552))
                    staticcall address(_552).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not _556:
                        revert with 0, 18
                    if sub_3d3b2603[address(_552)] > mem[_638] / _556:
                        revert with 0, 'rewards-too-high'
            else:
                if periodFinish[address(mem[(32 * idx) + 128])] < lastUpdateTime[address(mem[(32 * idx) + 128])]:
                    revert with 0, 17
                if periodFinish[address(mem[(32 * idx) + 128])] - lastUpdateTime[address(mem[(32 * idx) + 128])] and sub_3d3b2603[address(mem[(32 * idx) + 128])] > -1 / periodFinish[address(mem[(32 * idx) + 128])] - lastUpdateTime[address(mem[(32 * idx) + 128])]:
                    revert with 0, 17
                if (periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (lastUpdateTime[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored[address(mem[(32 * idx) + 128])] > !((10^18 * periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (10^18 * lastUpdateTime[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) / ext_call.return_data[0]):
                    revert with 0, 17
                rewardPerTokenStored[address(mem[(32 * idx) + 128])] += (10^18 * periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (10^18 * lastUpdateTime[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) / ext_call.return_data[0]
                if block.timestamp >= periodFinish[address(mem[(32 * idx) + 128])]:
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        revert with 0, 18
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 6
                    sub_3d3b2603[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_552))
                    staticcall address(_552).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _616 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not _556:
                        revert with 0, 18
                    if sub_3d3b2603[address(_552)] > mem[_616] / _556:
                        revert with 0, 'rewards-too-high'
                else:
                    if periodFinish[address(mem[(32 * idx) + 128])] < block.timestamp:
                        revert with 0, 17
                    if periodFinish[address(mem[(32 * idx) + 128])] - block.timestamp and sub_3d3b2603[address(mem[(32 * idx) + 128])] > -1 / periodFinish[address(mem[(32 * idx) + 128])] - block.timestamp:
                        revert with 0, 17
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] > !((periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])])):
                        revert with 0, 17
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        revert with 0, 18
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 6
                    sub_3d3b2603[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + (periodFinish[address(mem[(32 * idx) + 128])] * sub_3d3b2603[address(mem[(32 * idx) + 128])]) - (block.timestamp * sub_3d3b2603[address(mem[(32 * idx) + 128])]) / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_552))
                    staticcall address(_552).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not _556:
                        revert with 0, 18
                    if sub_3d3b2603[address(_552)] > mem[_639] / _556:
                        revert with 0, 'rewards-too-high'
        sub_e9c54488[address(_552)] = _556
        lastUpdateTime[address(_552)] = block.timestamp
        if block.timestamp > !_556:
            revert with 0, 17
        mem[0] = address(_552)
        mem[32] = 5
        periodFinish[address(_552)] = block.timestamp + _556
        mem[mem[64]] = _554
        mem[mem[64] + 32] = _556
        emit RewardAdded(_554, _556, address(_552));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < rewardTokens.length:
        if not ext_call.return_data[0]:
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 8
            if block.timestamp < periodFinish[stor3[idx].field_0]:
                lastUpdateTime[stor3[idx].field_0] = block.timestamp
            else:
                lastUpdateTime[stor3[idx].field_0] = periodFinish[stor3[idx].field_0]
            if arg1:
                if not ext_call.return_data[0]:
                    if rewardPerTokenStored[stor3[idx].field_0] < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                        revert with 0, 17
                    rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                else:
                    if block.timestamp < periodFinish[stor3[idx].field_0]:
                        if block.timestamp < lastUpdateTime[stor3[idx].field_0]:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / block.timestamp - lastUpdateTime[stor3[idx].field_0]:
                            revert with 0, 17
                        if (block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                            revert with 0, 17
                        if rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                            revert with 0, 17
                        rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        if periodFinish[stor3[idx].field_0] < lastUpdateTime[stor3[idx].field_0]:
                            revert with 0, 17
                        if periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0]:
                            revert with 0, 17
                        if (periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                            revert with 0, 17
                        if rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                            revert with 0, 17
                        rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                mem[0] = arg1
                mem[32] = sha3(rewardTokens[idx].field_0, 10)
                userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] = rewardPerTokenStored[stor3[idx].field_0]
        else:
            if block.timestamp < periodFinish[stor3[idx].field_0]:
                if block.timestamp < lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / block.timestamp - lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if (block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                    revert with 0, 17
                rewardPerTokenStored[stor3[idx].field_0] += (10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 8
                if block.timestamp < periodFinish[stor3[idx].field_0]:
                    lastUpdateTime[stor3[idx].field_0] = block.timestamp
                else:
                    lastUpdateTime[stor3[idx].field_0] = periodFinish[stor3[idx].field_0]
                if arg1:
                    if not ext_call.return_data[0]:
                        if rewardPerTokenStored[stor3[idx].field_0] < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                            revert with 0, 17
                        rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        if block.timestamp < periodFinish[stor3[idx].field_0]:
                            if block.timestamp < lastUpdateTime[stor3[idx].field_0]:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / block.timestamp - lastUpdateTime[stor3[idx].field_0]:
                                revert with 0, 17
                            if (block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                                revert with 0, 17
                            if rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                                revert with 0, 17
                            rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                        else:
                            if periodFinish[stor3[idx].field_0] < lastUpdateTime[stor3[idx].field_0]:
                                revert with 0, 17
                            if periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0]:
                                revert with 0, 17
                            if (periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                                revert with 0, 17
                            if rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                                revert with 0, 17
                            rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                    mem[0] = arg1
                    mem[32] = sha3(rewardTokens[idx].field_0, 10)
                    userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] = rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0])
            else:
                if periodFinish[stor3[idx].field_0] < lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0]:
                    revert with 0, 17
                if (periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                    revert with 0, 17
                rewardPerTokenStored[stor3[idx].field_0] += (10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 8
                if block.timestamp < periodFinish[stor3[idx].field_0]:
                    lastUpdateTime[stor3[idx].field_0] = block.timestamp
                else:
                    lastUpdateTime[stor3[idx].field_0] = periodFinish[stor3[idx].field_0]
                if arg1:
                    if not ext_call.return_data[0]:
                        if rewardPerTokenStored[stor3[idx].field_0] < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                            revert with 0, 17
                        rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        if block.timestamp < periodFinish[stor3[idx].field_0]:
                            if block.timestamp < lastUpdateTime[stor3[idx].field_0]:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / block.timestamp - lastUpdateTime[stor3[idx].field_0]:
                                revert with 0, 17
                            if (block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                                revert with 0, 17
                            if rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                                revert with 0, 17
                            rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * block.timestamp * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                        else:
                            if periodFinish[stor3[idx].field_0] < lastUpdateTime[stor3[idx].field_0]:
                                revert with 0, 17
                            if periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0] and sub_3d3b2603[stor3[idx].field_0] > -1 / periodFinish[stor3[idx].field_0] - lastUpdateTime[stor3[idx].field_0]:
                                revert with 0, 17
                            if (periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if rewardPerTokenStored[stor3[idx].field_0] > !((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]):
                                revert with 0, 17
                            if rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) < userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] and rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0]) - userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if rewards[stor3[idx].field_0][address(arg1)] > !((rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18):
                                revert with 0, 17
                            rewards[stor3[idx].field_0][address(arg1)] += (rewardPerTokenStored[stor3[idx].field_0] * ext_call.return_data[0]) + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] * ext_call.return_data[0]) / 10^18
                    mem[0] = arg1
                    mem[32] = sha3(rewardTokens[idx].field_0, 10)
                    userRewardPerTokenPaid[stor3[idx].field_0][address(arg1)] = rewardPerTokenStored[stor3[idx].field_0] + ((10^18 * periodFinish[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) - (10^18 * lastUpdateTime[stor3[idx].field_0] * sub_3d3b2603[stor3[idx].field_0]) / ext_call.return_data[0])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
