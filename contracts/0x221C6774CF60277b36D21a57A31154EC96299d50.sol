contract main {




// =====================  Runtime code  =====================


#
#  - sub_077e2e37(?)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address previousOwner;
mapping of uint8 stor2;
address sub_13bb3c33Address;
address usdOracleAddress;
address devaddr;
address sub_d1ae7d70Address;
address sub_1e0872d7Address;
address founderaddr;
uint256 REWARD_PER_BLOCK;
array of uint256 rEWARD_MULTIPLIER;
array of uint256 hALVING_AT_BLOCK;
array of uint256 blockDeltaStartStage;
array of uint256 blockDeltaEndStage;
array of uint256 userFeeStage;
uint256 FINISH_BONUS_AT_BLOCK;
uint256 userDepFee;
uint256 START_BLOCK;
uint256 PERCENT_LOCK_BONUS_REWARD;
uint256 PERCENT_FOR_DEV;
uint256 sub_1f84593e;
uint256 sub_85ee2a7f;
uint256 PERCENT_FOR_FOUNDERS;
array of struct poolInfo;
mapping of uint256 poolId1;
mapping of struct userInfo;
uint256 totalAllocPoint;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of address stor89622809563556123081897041840816014639138942293158154584485133346364573191189;
array of uint256 stor89622809563556123081897041840816014639138942293158154584485133346364573191190;
array of uint256 stor89622809563556123081897041840816014639138942293158154584485133346364573191191;
array of uint256 stor89622809563556123081897041840816014639138942293158154584485133346364573191192;
array of uint256 stor89622809563556123081897041840816014639138942293158154584485133346364573191193;
array of uint8 stor89622809563556123081897041840816014639138942293158154584485133346364573191194;

function poolLength() payable {
    return poolInfo.length
}

function sub_13bb3c33(?) payable {
    return sub_13bb3c33Address
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           bool(poolInfo[arg1].field_1280)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_1e0872d7(?) payable {
    return sub_1e0872d7Address
}

function sub_1f84593e(?) payable {
    return sub_1f84593e
}

function REWARD_MULTIPLIER(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rEWARD_MULTIPLIER.length
    return rEWARD_MULTIPLIER[arg1]
}

function START_BLOCK() payable {
    return START_BLOCK
}

function HALVING_AT_BLOCK(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < hALVING_AT_BLOCK.length
    return hALVING_AT_BLOCK[arg1]
}

function blockDeltaStartStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaStartStage.length
    return blockDeltaStartStage[arg1]
}

function previousOwner() payable {
    return previousOwner
}

function userDepFee() payable {
    return userDepFee
}

function sub_85ee2a7f(?) payable {
    return sub_85ee2a7f
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024,
           userInfo[arg1][arg2].field_1280,
           userInfo[arg1][arg2].field_1536
}

function PERCENT_LOCK_BONUS_REWARD() payable {
    return PERCENT_LOCK_BONUS_REWARD
}

function REWARD_PER_BLOCK() payable {
    return REWARD_PER_BLOCK
}

function FINISH_BONUS_AT_BLOCK() payable {
    return FINISH_BONUS_AT_BLOCK
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function PERCENT_FOR_FOUNDERS() payable {
    return PERCENT_FOR_FOUNDERS
}

function usdOracle() payable {
    return usdOracleAddress
}

function blockDeltaEndStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaEndStage.length
    return blockDeltaEndStage[arg1]
}

function poolId1(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return poolId1[arg1]
}

function userFeeStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < userFeeStage.length
    return userFeeStage[arg1]
}

function sub_d1ae7d70(?) payable {
    return sub_d1ae7d70Address
}

function devaddr() payable {
    return devaddr
}

function founderaddr() payable {
    return founderaddr
}

function PERCENT_FOR_DEV() payable {
    return PERCENT_FOR_DEV
}

function _fallback() payable {
    revert
}

function setDevDepFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        require owner == msg.sender
    userDepFee = arg1
}

function starblockUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        require owner == msg.sender
    START_BLOCK = arg1
}

function rewardUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        require owner == msg.sender
    REWARD_PER_BLOCK = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function bonusFinishUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        require owner == msg.sender
    FINISH_BONUS_AT_BLOCK = arg1
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function reviseWithdraw(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not stor2[msg.sender]:
        require owner == msg.sender
    userInfo[arg1][address(arg2)].field_768 = arg3
}

function reviseDeposit(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not stor2[msg.sender]:
        require owner == msg.sender
    userInfo[arg1][address(arg2)].field_1024 = arg3
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != msg.sender
    stor2[address(arg1)] = 0
}

function sub_91fd81c5(?) payable {
    require calldata.size - 4 >= 160
    if not stor2[msg.sender]:
        require owner == msg.sender
    PERCENT_LOCK_BONUS_REWARD = arg1
    PERCENT_FOR_DEV = arg2
    sub_1f84593e = arg3
    sub_85ee2a7f = arg4
    PERCENT_FOR_FOUNDERS = arg5
}

function sub_eb196895(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require bool(arg2) != bool(poolInfo[arg1].field_1280)
    poolInfo[arg1].field_1280 = uint8(bool(arg2))
    emit 0x1c521750: arg1, bool(arg2)
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

function sub_3273ed76(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not stor2[msg.sender]:
        require owner == msg.sender
    devaddr = address(arg1)
    sub_d1ae7d70Address = address(arg2)
    sub_1e0872d7Address = address(arg3)
    founderaddr = address(arg4)
}

function sub_0ce4c922(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    REWARD_PER_BLOCK = arg1
    START_BLOCK = arg2
    if rEWARD_MULTIPLIER.length < 1:
        revert with 0, 17
    if var30002 >= rEWARD_MULTIPLIER.length - 1:
        if rEWARD_MULTIPLIER.length < 1:
            revert with 0, 17
        if arg3 and rEWARD_MULTIPLIER.length - 1 > -1 / arg3:
            revert with 0, 17
        if -arg3 + (rEWARD_MULTIPLIER.length * arg3) > !arg2:
            revert with 0, 17
        FINISH_BONUS_AT_BLOCK = -arg3 + (rEWARD_MULTIPLIER.length * arg3) + arg2
        hALVING_AT_BLOCK.length++
        stor175B[stor11.length] = -1
    if 1 > !var34002:
        revert with 0, 17
    if arg3 and var40002 > -1 / arg3:
        revert with 0, 17
    if var46001 > !arg2:
        revert with 0, 17
    hALVING_AT_BLOCK.length++
    stor175B[stor11.length] = var50001
    if var52001 == -1:
        revert with 0, 17
    if rEWARD_MULTIPLIER.length < 1:
        revert with 0, 17
    # nil
}

function setUserFeeStage(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor2[msg.sender]:
        require owner == msg.sender
    userFeeStage.length = arg1.length
    if not arg1.length:
        idx = 0
        while userFeeStage.length > idx:
            userFeeStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            userFeeStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while userFeeStage.length > idx:
            userFeeStage[idx] = 0
            idx = idx + 1
            continue 
}

function halvingUpdate(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor2[msg.sender]:
        require owner == msg.sender
    hALVING_AT_BLOCK.length = arg1.length
    if not arg1.length:
        idx = 0
        while hALVING_AT_BLOCK.length > idx:
            hALVING_AT_BLOCK[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            hALVING_AT_BLOCK[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while hALVING_AT_BLOCK.length > idx:
            hALVING_AT_BLOCK[idx] = 0
            idx = idx + 1
            continue 
}

function rewardMulUpdate(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor2[msg.sender]:
        require owner == msg.sender
    rEWARD_MULTIPLIER.length = arg1.length
    if not arg1.length:
        idx = 0
        while rEWARD_MULTIPLIER.length > idx:
            rEWARD_MULTIPLIER[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            rEWARD_MULTIPLIER[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while rEWARD_MULTIPLIER.length > idx:
            rEWARD_MULTIPLIER[idx] = 0
            idx = idx + 1
            continue 
}

function setStageEnds(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor2[msg.sender]:
        require owner == msg.sender
    blockDeltaEndStage.length = arg1.length
    if not arg1.length:
        idx = 0
        while blockDeltaEndStage.length > idx:
            blockDeltaEndStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            blockDeltaEndStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while blockDeltaEndStage.length > idx:
            blockDeltaEndStage[idx] = 0
            idx = idx + 1
            continue 
}

function setStageStarts(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor2[msg.sender]:
        require owner == msg.sender
    blockDeltaStartStage.length = arg1.length
    if not arg1.length:
        idx = 0
        while blockDeltaStartStage.length > idx:
            blockDeltaStartStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            blockDeltaStartStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while blockDeltaStartStage.length > idx:
            blockDeltaStartStage[idx] = 0
            idx = idx + 1
            continue 
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 < START_BLOCK:
        return 0
    idx = 0
    s = 0
    t = arg1
    while idx < hALVING_AT_BLOCK.length:
        mem[0] = 11
        if arg2 <= hALVING_AT_BLOCK[idx]:
            if idx >= rEWARD_MULTIPLIER.length:
                revert with 0, 50
            if arg2 < t:
                revert with 0, 17
            if arg2 - t and rEWARD_MULTIPLIER[idx] > -1 / arg2 - t:
                revert with 0, 17
            if s > !((arg2 * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
                revert with 0, 17
            return (s + (arg2 * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]))
        if t >= hALVING_AT_BLOCK[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= rEWARD_MULTIPLIER.length:
            revert with 0, 50
        mem[0] = 10
        if hALVING_AT_BLOCK[idx] < t:
            revert with 0, 17
        if hALVING_AT_BLOCK[idx] - t and rEWARD_MULTIPLIER[idx] > -1 / hALVING_AT_BLOCK[idx] - t:
            revert with 0, 17
        if s > !((hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])
        t = hALVING_AT_BLOCK[idx]
        continue 
    return s
}

function getPoolReward(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 < START_BLOCK:
        if False and REWARD_PER_BLOCK > 0:
            revert with 0, 17
        if False and arg3 > 0:
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.cap() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 < 0 / totalAllocPoint:
            return 0
        if 0 / totalAllocPoint and PERCENT_FOR_DEV > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if 0 / totalAllocPoint and sub_1f84593e > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if 0 / totalAllocPoint and sub_85ee2a7f > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if 0 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        return 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000, 
               0 / totalAllocPoint,
               0 / totalAllocPoint * sub_1f84593e / 100,
               0 / totalAllocPoint * sub_85ee2a7f / 10000,
               0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
    idx = 0
    s = 0
    t = arg1
    while idx < hALVING_AT_BLOCK.length:
        mem[0] = 11
        if arg2 > hALVING_AT_BLOCK[idx]:
            if t >= hALVING_AT_BLOCK[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= rEWARD_MULTIPLIER.length:
                revert with 0, 50
            mem[0] = 10
            if hALVING_AT_BLOCK[idx] < t:
                revert with 0, 17
            if hALVING_AT_BLOCK[idx] - t and rEWARD_MULTIPLIER[idx] > -1 / hALVING_AT_BLOCK[idx] - t:
                revert with 0, 17
            if s > !((hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])
            t = hALVING_AT_BLOCK[idx]
            continue 
        if idx >= rEWARD_MULTIPLIER.length:
            revert with 0, 50
        if arg2 < t:
            revert with 0, 17
        if arg2 - t and rEWARD_MULTIPLIER[idx] > -1 / arg2 - t:
            revert with 0, 17
        if s > !((arg2 * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
            revert with 0, 17
        if s + (arg2 * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]) and REWARD_PER_BLOCK > -1 / s + (arg2 * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]):
            revert with 0, 17
        if (s * REWARD_PER_BLOCK) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) and arg3 > -1 / (s * REWARD_PER_BLOCK) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.cap() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 < (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint:
            return 0
        if (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint and PERCENT_FOR_DEV > -1 / (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint:
            revert with 0, 17
        if (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint and sub_1f84593e > -1 / (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint:
            revert with 0, 17
        if (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint and sub_85ee2a7f > -1 / (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint:
            revert with 0, 17
        if (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint:
            revert with 0, 17
        return (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint * PERCENT_FOR_DEV / 100000, 
               (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint,
               (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint * sub_1f84593e / 100,
               (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint * sub_85ee2a7f / 10000,
               (s * REWARD_PER_BLOCK * arg3) + (arg2 * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * arg3) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
    if s and REWARD_PER_BLOCK > -1 / s:
        revert with 0, 17
    if s * REWARD_PER_BLOCK and arg3 > -1 / s * REWARD_PER_BLOCK:
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    require ext_code.size(sub_13bb3c33Address)
    staticcall sub_13bb3c33Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_13bb3c33Address)
    staticcall sub_13bb3c33Address.cap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < s * REWARD_PER_BLOCK * arg3 / totalAllocPoint:
        return 0
    if s * REWARD_PER_BLOCK * arg3 / totalAllocPoint and PERCENT_FOR_DEV > -1 / s * REWARD_PER_BLOCK * arg3 / totalAllocPoint:
        revert with 0, 17
    if s * REWARD_PER_BLOCK * arg3 / totalAllocPoint and sub_1f84593e > -1 / s * REWARD_PER_BLOCK * arg3 / totalAllocPoint:
        revert with 0, 17
    if s * REWARD_PER_BLOCK * arg3 / totalAllocPoint and sub_85ee2a7f > -1 / s * REWARD_PER_BLOCK * arg3 / totalAllocPoint:
        revert with 0, 17
    if s * REWARD_PER_BLOCK * arg3 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / s * REWARD_PER_BLOCK * arg3 / totalAllocPoint:
        revert with 0, 17
    return s * REWARD_PER_BLOCK * arg3 / totalAllocPoint * PERCENT_FOR_DEV / 100000, 
           s * REWARD_PER_BLOCK * arg3 / totalAllocPoint,
           s * REWARD_PER_BLOCK * arg3 / totalAllocPoint * sub_1f84593e / 100,
           s * REWARD_PER_BLOCK * arg3 / totalAllocPoint * sub_85ee2a7f / 10000,
           s * REWARD_PER_BLOCK * arg3 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[100] = this.address
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw > farmBal'
    if userInfo[arg1][msg.sender].field_0 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_0 < 75 * userInfo[arg1][msg.sender].field_0 / 100:
        revert with 0, 17
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if poolInfo[arg1].field_1024 < 75 * userInfo[arg1][msg.sender].field_0 / 100:
        revert with 0, 17
    if poolInfo[arg1].field_1024 < userInfo[arg1][msg.sender].field_0:
        revert with 0, 17
    poolInfo[arg1].field_1024 -= userInfo[arg1][msg.sender].field_0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = 75 * userInfo[arg1][msg.sender].field_0 / 100
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 75 * userInfo[arg1][msg.sender].field_0 / 100, 0
    mem[ceil32(return_data.size) + 328] = 0
    call poolInfo[arg1].field_0 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 75 * userInfo[arg1][msg.sender].field_0 / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 75 * userInfo[arg1][msg.sender].field_0 / 100, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 296] = devaddr
        mem[ceil32(return_data.size) + 328] = userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100)
        mem[ceil32(return_data.size) + 260] = 68
        mem[ceil32(return_data.size) + 292 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 360] = 32
        mem[ceil32(return_data.size) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 424 len 96] = 0, devaddr, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), 0
        mem[ceil32(return_data.size) + 492] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, 0, devaddr, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, devaddr, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                if not mem[ceil32(return_data.size) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit EmergencyWithdraw(75 * userInfo[arg1][msg.sender].field_0 / 100, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), msg.sender, arg1);
    mem[ceil32(return_data.size) + 260] = return_data.size
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
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = devaddr
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, devaddr, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
    call poolInfo[arg1].field_0 with:
       funct Mask(32, 224, 0, devaddr, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, devaddr, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit EmergencyWithdraw(75 * userInfo[arg1][msg.sender].field_0 / 100, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), msg.sender, arg1);
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        emit EmergencyWithdraw(75 * userInfo[arg1][msg.sender].field_0 / 100, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), msg.sender, arg1);
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
        emit EmergencyWithdraw(75 * userInfo[arg1][msg.sender].field_0 / 100, userInfo[arg1][msg.sender].field_0 - (75 * userInfo[arg1][msg.sender].field_0 / 100), msg.sender, arg1);
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if ext_call.return_data[0] <= 0:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 < START_BLOCK:
        if False and REWARD_PER_BLOCK > 0:
            revert with 0, 17
        if False and poolInfo[arg1].field_256 > 0:
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.cap() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 < 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and PERCENT_FOR_DEV > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if 0 / totalAllocPoint and sub_1f84593e > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if 0 / totalAllocPoint and sub_85ee2a7f > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if 0 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    idx = 0
    s = 0
    t = poolInfo[arg1].field_512
    while idx < hALVING_AT_BLOCK.length:
        mem[0] = 11
        if block.number > hALVING_AT_BLOCK[idx]:
            if t >= hALVING_AT_BLOCK[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= rEWARD_MULTIPLIER.length:
                revert with 0, 50
            mem[0] = 10
            if hALVING_AT_BLOCK[idx] < t:
                revert with 0, 17
            if hALVING_AT_BLOCK[idx] - t and rEWARD_MULTIPLIER[idx] > -1 / hALVING_AT_BLOCK[idx] - t:
                revert with 0, 17
            if s > !((hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])
            t = hALVING_AT_BLOCK[idx]
            continue 
        if idx >= rEWARD_MULTIPLIER.length:
            revert with 0, 50
        if block.number < t:
            revert with 0, 17
        if block.number - t and rEWARD_MULTIPLIER[idx] > -1 / block.number - t:
            revert with 0, 17
        if s > !((block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
            revert with 0, 17
        if s + (block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]) and REWARD_PER_BLOCK > -1 / s + (block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]):
            revert with 0, 17
        if (s * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) and poolInfo[arg1].field_256 > -1 / (s * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.cap() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 < (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and PERCENT_FOR_DEV > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and sub_1f84593e > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and sub_85ee2a7f > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if s and REWARD_PER_BLOCK > -1 / s:
        revert with 0, 17
    if s * REWARD_PER_BLOCK and poolInfo[arg1].field_256 > -1 / s * REWARD_PER_BLOCK:
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    require ext_code.size(sub_13bb3c33Address)
    staticcall sub_13bb3c33Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_13bb3c33Address)
    staticcall sub_13bb3c33Address.cap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and PERCENT_FOR_DEV > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
        revert with 0, 17
    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and sub_1f84593e > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
        revert with 0, 17
    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and sub_85ee2a7f > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
        revert with 0, 17
    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
        revert with 0, 17
    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            if poolInfo[arg1].field_512 < START_BLOCK:
                if False and REWARD_PER_BLOCK > 0:
                    revert with 0, 17
                if False and poolInfo[arg1].field_256 > 0:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.cap() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < 0 / totalAllocPoint:
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                else:
                    if 0 / totalAllocPoint and PERCENT_FOR_DEV > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if 0 / totalAllocPoint and sub_1f84593e > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if 0 / totalAllocPoint and sub_85ee2a7f > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if 0 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * sub_1f84593e / 100:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 0 / totalAllocPoint * sub_1f84593e / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 0 / totalAllocPoint * sub_85ee2a7f / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args founderaddr, 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                idx = 0
                s = 0
                t = poolInfo[arg1].field_512
                while idx < hALVING_AT_BLOCK.length:
                    mem[0] = 11
                    if block.number > hALVING_AT_BLOCK[idx]:
                        if t >= hALVING_AT_BLOCK[idx]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= rEWARD_MULTIPLIER.length:
                            revert with 0, 50
                        mem[0] = 10
                        if hALVING_AT_BLOCK[idx] < t:
                            revert with 0, 17
                        if hALVING_AT_BLOCK[idx] - t and rEWARD_MULTIPLIER[idx] > -1 / hALVING_AT_BLOCK[idx] - t:
                            revert with 0, 17
                        if s > !((hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])
                        t = hALVING_AT_BLOCK[idx]
                        continue 
                    if idx >= rEWARD_MULTIPLIER.length:
                        revert with 0, 50
                    if block.number < t:
                        revert with 0, 17
                    if block.number - t and rEWARD_MULTIPLIER[idx] > -1 / block.number - t:
                        revert with 0, 17
                    if s > !((block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
                        revert with 0, 17
                    if s + (block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]) and REWARD_PER_BLOCK > -1 / s + (block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]):
                        revert with 0, 17
                    if (s * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) and poolInfo[arg1].field_256 > -1 / (s * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.cap() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 < (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                    else:
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and PERCENT_FOR_DEV > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and sub_1f84593e > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and sub_85ee2a7f > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 75 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 45 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 85 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args founderaddr, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args founderaddr, 95 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if s and REWARD_PER_BLOCK > -1 / s:
                    revert with 0, 17
                if s * REWARD_PER_BLOCK and poolInfo[arg1].field_256 > -1 / s * REWARD_PER_BLOCK:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.cap() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                else:
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and PERCENT_FOR_DEV > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and sub_1f84593e > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and sub_85ee2a7f > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 0, 17
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 75 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 45 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 85 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args founderaddr, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args founderaddr, 95 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 23
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _229 = mem[_228]
            if not mem[_228]:
                poolInfo[idx].field_512 = block.number
            else:
                if poolInfo[idx].field_512 < START_BLOCK:
                    if False and REWARD_PER_BLOCK > 0:
                        revert with 0, 17
                    if False and poolInfo[idx].field_256 > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _237 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _239 = mem[_237]
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.cap() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _247 = mem[_245]
                    if mem[_245] < _239:
                        revert with 0, 17
                    if mem[_245] - _239 < 0 / totalAllocPoint:
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _247 - _239
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _247 - _239
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _247 - _239 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not _229:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * _247) - (10^12 * _239) / _229):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * _247) - (10^12 * _239) / _229
                        poolInfo[idx].field_512 = block.number
                    else:
                        if 0 / totalAllocPoint and PERCENT_FOR_DEV > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if 0 / totalAllocPoint and sub_1f84593e > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if 0 / totalAllocPoint and sub_85ee2a7f > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if 0 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not _229:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _229):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _229
                        poolInfo[idx].field_512 = block.number
                        if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                revert with 0, 17
                            mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = devaddr
                            mem[mem[64] + 36] = 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_1f84593e / 100:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 0 / totalAllocPoint * sub_1f84593e / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                revert with 0, 17
                            mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_d1ae7d70Address
                            mem[mem[64] + 36] = 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 0 / totalAllocPoint * sub_85ee2a7f / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                revert with 0, 17
                            mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_1e0872d7Address
                            mem[mem[64] + 36] = 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args founderaddr, 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                revert with 0, 17
                            mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = founderaddr
                            mem[mem[64] + 36] = 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    s = 0
                    t = 0
                    u = poolInfo[idx].field_512
                    while s < hALVING_AT_BLOCK.length:
                        mem[0] = 11
                        if block.number > hALVING_AT_BLOCK[s]:
                            if u >= hALVING_AT_BLOCK[s]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                u = u
                                continue 
                            if s >= rEWARD_MULTIPLIER.length:
                                revert with 0, 50
                            mem[0] = 10
                            if hALVING_AT_BLOCK[s] < u:
                                revert with 0, 17
                            if hALVING_AT_BLOCK[s] - u and rEWARD_MULTIPLIER[s] > -1 / hALVING_AT_BLOCK[s] - u:
                                revert with 0, 17
                            if t > !((hALVING_AT_BLOCK[s] * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])):
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + (hALVING_AT_BLOCK[s] * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])
                            u = hALVING_AT_BLOCK[s]
                            continue 
                        if s >= rEWARD_MULTIPLIER.length:
                            revert with 0, 50
                        mem[0] = 10
                        if block.number < u:
                            revert with 0, 17
                        if block.number - u and rEWARD_MULTIPLIER[s] > -1 / block.number - u:
                            revert with 0, 17
                        if t > !((block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])):
                            revert with 0, 17
                        if t + (block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s]) and REWARD_PER_BLOCK > -1 / t + (block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s]):
                            revert with 0, 17
                        if (t * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) and poolInfo[idx].field_256 > -1 / (t * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _462 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _464 = mem[_462]
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.cap() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _469 = mem[_468]
                        if mem[_468] < _464:
                            revert with 0, 17
                        if mem[_468] - _464 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _469 - _464
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _469 - _464
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _469 - _464 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _229:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _469) - (10^12 * _464) / _229):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _469) - (10^12 * _464) / _229
                            poolInfo[idx].field_512 = block.number
                        else:
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and PERCENT_FOR_DEV > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and sub_1f84593e > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and sub_85ee2a7f > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _229:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / _229):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / _229
                            poolInfo[idx].field_512 = block.number
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_d1ae7d70Address
                                mem[mem[64] + 36] = 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1e0872d7Address
                                mem[mem[64] + 36] = 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = founderaddr
                                mem[mem[64] + 36] = 95 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, 95 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if t and REWARD_PER_BLOCK > -1 / t:
                        revert with 0, 17
                    if t * REWARD_PER_BLOCK and poolInfo[idx].field_256 > -1 / t * REWARD_PER_BLOCK:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _454 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _455 = mem[_454]
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.cap() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _458 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _459 = mem[_458]
                    if mem[_458] < _455:
                        revert with 0, 17
                    if mem[_458] - _455 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _459 - _455
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _459 - _455
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _459 - _455 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not _229:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * _459) - (10^12 * _455) / _229):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * _459) - (10^12 * _455) / _229
                        poolInfo[idx].field_512 = block.number
                    else:
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and PERCENT_FOR_DEV > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and sub_1f84593e > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and sub_85ee2a7f > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 0, 17
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not _229:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / _229):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / _229
                        poolInfo[idx].field_512 = block.number
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                revert with 0, 17
                            mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = devaddr
                            mem[mem[64] + 36] = 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                revert with 0, 17
                            mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_d1ae7d70Address
                            mem[mem[64] + 36] = 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                revert with 0, 17
                            mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_1e0872d7Address
                            mem[mem[64] + 36] = 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args founderaddr, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                revert with 0, 17
                            mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = founderaddr
                            mem[mem[64] + 36] = 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, address arg2, uint256 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 23
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _238 = mem[_237]
                if not mem[_237]:
                    poolInfo[idx].field_512 = block.number
                else:
                    if poolInfo[idx].field_512 < START_BLOCK:
                        if False and REWARD_PER_BLOCK > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _250 = mem[_248]
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.cap() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _256 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _258 = mem[_256]
                        if mem[_256] < _250:
                            revert with 0, 17
                        if mem[_256] - _250 < 0 / totalAllocPoint:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _258 - _250
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _258 - _250
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _258 - _250 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _238:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _258) - (10^12 * _250) / _238):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _258) - (10^12 * _250) / _238
                            poolInfo[idx].field_512 = block.number
                        else:
                            if 0 / totalAllocPoint and PERCENT_FOR_DEV > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if 0 / totalAllocPoint and sub_1f84593e > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if 0 / totalAllocPoint and sub_85ee2a7f > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if 0 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _238:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _238):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _238
                            poolInfo[idx].field_512 = block.number
                            if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * sub_1f84593e / 100:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 0 / totalAllocPoint * sub_1f84593e / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_d1ae7d70Address
                                mem[mem[64] + 36] = 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 0 / totalAllocPoint * sub_85ee2a7f / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1e0872d7Address
                                mem[mem[64] + 36] = 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = founderaddr
                                mem[mem[64] + 36] = 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        s = 0
                        t = 0
                        u = poolInfo[idx].field_512
                        while s < hALVING_AT_BLOCK.length:
                            mem[0] = 11
                            if block.number > hALVING_AT_BLOCK[s]:
                                if u >= hALVING_AT_BLOCK[s]:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    u = u
                                    continue 
                                if s >= rEWARD_MULTIPLIER.length:
                                    revert with 0, 50
                                mem[0] = 10
                                if hALVING_AT_BLOCK[s] < u:
                                    revert with 0, 17
                                if hALVING_AT_BLOCK[s] - u and rEWARD_MULTIPLIER[s] > -1 / hALVING_AT_BLOCK[s] - u:
                                    revert with 0, 17
                                if t > !((hALVING_AT_BLOCK[s] * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (hALVING_AT_BLOCK[s] * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])
                                u = hALVING_AT_BLOCK[s]
                                continue 
                            if s >= rEWARD_MULTIPLIER.length:
                                revert with 0, 50
                            mem[0] = 10
                            if block.number < u:
                                revert with 0, 17
                            if block.number - u and rEWARD_MULTIPLIER[s] > -1 / block.number - u:
                                revert with 0, 17
                            if t > !((block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])):
                                revert with 0, 17
                            if t + (block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s]) and REWARD_PER_BLOCK > -1 / t + (block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s]):
                                revert with 0, 17
                            if (t * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) and poolInfo[idx].field_256 > -1 / (t * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _473 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _475 = mem[_473]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.cap() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _479 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _480 = mem[_479]
                            if mem[_479] < _475:
                                revert with 0, 17
                            if mem[_479] - _475 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _480 - _475
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), _480 - _475
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _480 - _475 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not _238:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _480) - (10^12 * _475) / _238):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _480) - (10^12 * _475) / _238
                                poolInfo[idx].field_512 = block.number
                            else:
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and PERCENT_FOR_DEV > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and sub_1f84593e > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and sub_85ee2a7f > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not _238:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / _238):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / _238
                                poolInfo[idx].field_512 = block.number
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_d1ae7d70Address
                                    mem[mem[64] + 36] = 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_1e0872d7Address
                                    mem[mem[64] + 36] = 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args founderaddr, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = founderaddr
                                    mem[mem[64] + 36] = 95 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args founderaddr, 95 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if t and REWARD_PER_BLOCK > -1 / t:
                            revert with 0, 17
                        if t * REWARD_PER_BLOCK and poolInfo[idx].field_256 > -1 / t * REWARD_PER_BLOCK:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _466 = mem[_465]
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.cap() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _470 = mem[_469]
                        if mem[_469] < _466:
                            revert with 0, 17
                        if mem[_469] - _466 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _470 - _466
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _470 - _466
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _470 - _466 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _238:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _470) - (10^12 * _466) / _238):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _470) - (10^12 * _466) / _238
                            poolInfo[idx].field_512 = block.number
                        else:
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and PERCENT_FOR_DEV > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 0, 17
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and sub_1f84593e > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 0, 17
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and sub_85ee2a7f > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 0, 17
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 0, 17
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _238:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / _238):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / _238
                            poolInfo[idx].field_512 = block.number
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_d1ae7d70Address
                                mem[mem[64] + 36] = 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1e0872d7Address
                                mem[mem[64] + 36] = 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = founderaddr
                                mem[mem[64] + 36] = 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg3:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg3
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg3
    poolInfo[arg1].field_0 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 24
    if poolId1[address(arg2)]:
        revert with 0, 'lp is in pool'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 23
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _266 = mem[_265]
                if not mem[_265]:
                    poolInfo[idx].field_512 = block.number
                else:
                    if poolInfo[idx].field_512 < START_BLOCK:
                        if False and REWARD_PER_BLOCK > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _290 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _292 = mem[_290]
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.cap() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _300 = mem[_298]
                        if mem[_298] < _292:
                            revert with 0, 17
                        if mem[_298] - _292 < 0 / totalAllocPoint:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _300 - _292
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _300 - _292
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _300 - _292 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _266:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _300) - (10^12 * _292) / _266):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _300) - (10^12 * _292) / _266
                            poolInfo[idx].field_512 = block.number
                        else:
                            if 0 / totalAllocPoint and PERCENT_FOR_DEV > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if 0 / totalAllocPoint and sub_1f84593e > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if 0 / totalAllocPoint and sub_85ee2a7f > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if 0 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _266:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _266):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _266
                            poolInfo[idx].field_512 = block.number
                            if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * sub_1f84593e / 100:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 0 / totalAllocPoint * sub_1f84593e / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_d1ae7d70Address
                                mem[mem[64] + 36] = 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 0 / totalAllocPoint * sub_85ee2a7f / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1e0872d7Address
                                mem[mem[64] + 36] = 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = founderaddr
                                mem[mem[64] + 36] = 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        s = 0
                        t = 0
                        u = poolInfo[idx].field_512
                        while s < hALVING_AT_BLOCK.length:
                            mem[0] = 11
                            if block.number > hALVING_AT_BLOCK[s]:
                                if u >= hALVING_AT_BLOCK[s]:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    u = u
                                    continue 
                                if s >= rEWARD_MULTIPLIER.length:
                                    revert with 0, 50
                                mem[0] = 10
                                if hALVING_AT_BLOCK[s] < u:
                                    revert with 0, 17
                                if hALVING_AT_BLOCK[s] - u and rEWARD_MULTIPLIER[s] > -1 / hALVING_AT_BLOCK[s] - u:
                                    revert with 0, 17
                                if t > !((hALVING_AT_BLOCK[s] * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (hALVING_AT_BLOCK[s] * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])
                                u = hALVING_AT_BLOCK[s]
                                continue 
                            if s >= rEWARD_MULTIPLIER.length:
                                revert with 0, 50
                            mem[0] = 10
                            if block.number < u:
                                revert with 0, 17
                            if block.number - u and rEWARD_MULTIPLIER[s] > -1 / block.number - u:
                                revert with 0, 17
                            if t > !((block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s])):
                                revert with 0, 17
                            if t + (block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s]) and REWARD_PER_BLOCK > -1 / t + (block.number * rEWARD_MULTIPLIER[s]) - (u * rEWARD_MULTIPLIER[s]):
                                revert with 0, 17
                            if (t * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) and poolInfo[idx].field_256 > -1 / (t * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _515 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _517 = mem[_515]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.cap() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _522 = mem[_521]
                            if mem[_521] < _517:
                                revert with 0, 17
                            if mem[_521] - _517 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _522 - _517
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), _522 - _517
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _522 - _517 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not _266:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _522) - (10^12 * _517) / _266):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _522) - (10^12 * _517) / _266
                                poolInfo[idx].field_512 = block.number
                            else:
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and PERCENT_FOR_DEV > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and sub_1f84593e > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and sub_85ee2a7f > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not _266:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / _266):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / _266
                                poolInfo[idx].field_512 = block.number
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_d1ae7d70Address
                                    mem[mem[64] + 36] = 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_1e0872d7Address
                                    mem[mem[64] + 36] = 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args founderaddr, (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = founderaddr
                                    mem[mem[64] + 36] = 95 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args founderaddr, 95 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if t and REWARD_PER_BLOCK > -1 / t:
                            revert with 0, 17
                        if t * REWARD_PER_BLOCK and poolInfo[idx].field_256 > -1 / t * REWARD_PER_BLOCK:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _508 = mem[_507]
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.cap() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _511 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _512 = mem[_511]
                        if mem[_511] < _508:
                            revert with 0, 17
                        if mem[_511] - _508 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _512 - _508
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _512 - _508
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _512 - _508 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _266:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _512) - (10^12 * _508) / _266):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _512) - (10^12 * _508) / _266
                            poolInfo[idx].field_512 = block.number
                        else:
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and PERCENT_FOR_DEV > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 0, 17
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and sub_1f84593e > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 0, 17
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and sub_85ee2a7f > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 0, 17
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 0, 17
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not _266:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / _266):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / _266
                            poolInfo[idx].field_512 = block.number
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_d1ae7d70Address
                                mem[mem[64] + 36] = 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_1e0872d7Address
                                mem[mem[64] + 36] = 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                mem[mem[64]] = 0x282d3fdf00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = founderaddr
                                mem[mem[64] + 36] = 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    if 1 > !poolInfo.length:
        revert with 0, 17
    poolId1[address(arg2)] = poolInfo.length + 1
    poolInfo.length++
    storC624[stor23.length] = arg2
    storC624[stor23.length] = arg1
    if block.number > START_BLOCK:
        storC624[stor23.length] = block.number
    else:
        storC624[stor23.length] = START_BLOCK
    storC624[stor23.length] = 0
    storC624[stor23.length] = 0
    storC624[stor23.length] = 1
}

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            if poolInfo[arg1].field_512 < START_BLOCK:
                if False and REWARD_PER_BLOCK > 0:
                    revert with 0, 17
                if False and poolInfo[arg1].field_256 > 0:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.cap() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < 0 / totalAllocPoint:
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                else:
                    if 0 / totalAllocPoint and PERCENT_FOR_DEV > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if 0 / totalAllocPoint and sub_1f84593e > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if 0 / totalAllocPoint and sub_85ee2a7f > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if 0 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * sub_1f84593e / 100:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 0 / totalAllocPoint * sub_1f84593e / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 0 / totalAllocPoint * sub_85ee2a7f / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args founderaddr, 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                idx = 0
                s = 0
                t = poolInfo[arg1].field_512
                while idx < hALVING_AT_BLOCK.length:
                    mem[0] = 11
                    if block.number > hALVING_AT_BLOCK[idx]:
                        if t >= hALVING_AT_BLOCK[idx]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= rEWARD_MULTIPLIER.length:
                            revert with 0, 50
                        mem[0] = 10
                        if hALVING_AT_BLOCK[idx] < t:
                            revert with 0, 17
                        if hALVING_AT_BLOCK[idx] - t and rEWARD_MULTIPLIER[idx] > -1 / hALVING_AT_BLOCK[idx] - t:
                            revert with 0, 17
                        if s > !((hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (hALVING_AT_BLOCK[idx] * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])
                        t = hALVING_AT_BLOCK[idx]
                        continue 
                    if idx >= rEWARD_MULTIPLIER.length:
                        revert with 0, 50
                    if block.number < t:
                        revert with 0, 17
                    if block.number - t and rEWARD_MULTIPLIER[idx] > -1 / block.number - t:
                        revert with 0, 17
                    if s > !((block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx])):
                        revert with 0, 17
                    if s + (block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]) and REWARD_PER_BLOCK > -1 / s + (block.number * rEWARD_MULTIPLIER[idx]) - (t * rEWARD_MULTIPLIER[idx]):
                        revert with 0, 17
                    if (s * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) and poolInfo[arg1].field_256 > -1 / (s * REWARD_PER_BLOCK) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.cap() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 < (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                    else:
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and PERCENT_FOR_DEV > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and sub_1f84593e > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and sub_85ee2a7f > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 75 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 45 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 85 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args founderaddr, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args founderaddr, 95 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    if userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_13bb3c33Address)
                                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                    call sub_13bb3c33Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                                else:
                                    call sub_13bb3c33Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 and PERCENT_LOCK_BONUS_REWARD > -1 / (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                    revert with 0, 17
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 * PERCENT_LOCK_BONUS_REWARD) - (userInfo[arg1][msg.sender].field_256 * PERCENT_LOCK_BONUS_REWARD) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                userInfo[arg1][msg.sender].field_512 = block.number
                                emit 0x93fdfb61: (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 * PERCENT_LOCK_BONUS_REWARD) - (userInfo[arg1][msg.sender].field_256 * PERCENT_LOCK_BONUS_REWARD) / 100, msg.sender, arg1
                        else:
                            if ext_call.return_data[0]:
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] and PERCENT_LOCK_BONUS_REWARD > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * PERCENT_LOCK_BONUS_REWARD / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                userInfo[arg1][msg.sender].field_512 = block.number
                                emit 0x93fdfb61: ext_call.return_data[0], ext_call.return_data[0] * PERCENT_LOCK_BONUS_REWARD / 100, msg.sender, arg1
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
                if s and REWARD_PER_BLOCK > -1 / s:
                    revert with 0, 17
                if s * REWARD_PER_BLOCK and poolInfo[arg1].field_256 > -1 / s * REWARD_PER_BLOCK:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.cap() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                else:
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and PERCENT_FOR_DEV > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and sub_1f84593e > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and sub_85ee2a7f > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint and PERCENT_FOR_FOUNDERS > -1 / s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 0, 17
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 75 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 45 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 85 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args founderaddr, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args founderaddr, 95 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if userInfo[arg1][msg.sender].field_0:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_13bb3c33Address)
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_13bb3c33Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call sub_13bb3c33Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 and PERCENT_LOCK_BONUS_REWARD > -1 / (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 17
                require ext_code.size(sub_13bb3c33Address)
                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 * PERCENT_LOCK_BONUS_REWARD) - (userInfo[arg1][msg.sender].field_256 * PERCENT_LOCK_BONUS_REWARD) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                userInfo[arg1][msg.sender].field_512 = block.number
                emit 0x93fdfb61: (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 * PERCENT_LOCK_BONUS_REWARD) - (userInfo[arg1][msg.sender].field_256 * PERCENT_LOCK_BONUS_REWARD) / 100, msg.sender, arg1
        else:
            if ext_call.return_data[0]:
                require ext_code.size(sub_13bb3c33Address)
                staticcall sub_13bb3c33Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_13bb3c33Address)
                call sub_13bb3c33Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] and PERCENT_LOCK_BONUS_REWARD > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(sub_13bb3c33Address)
                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * PERCENT_LOCK_BONUS_REWARD / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                userInfo[arg1][msg.sender].field_512 = block.number
                emit 0x93fdfb61: ext_call.return_data[0], ext_call.return_data[0] * PERCENT_LOCK_BONUS_REWARD / 100, msg.sender, arg1
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
}



}
