contract main {




// =====================  Runtime code  =====================


#
#  - sub_10375c97(?)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_47842a44(?)
#  - emergencyWithdraw(uint256 arg1)
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
array of uint256 devFeeStage;
uint256 FINISH_BONUS_AT_BLOCK;
uint256 userDepFee;
uint256 devDepFee;
uint256 START_BLOCK;
uint256 PERCENT_LOCK_BONUS_REWARD;
uint256 PERCENT_FOR_DEV;
uint256 sub_1f84593e;
uint256 sub_85ee2a7f;
uint256 PERCENT_FOR_FOUNDERS;
array of struct poolInfo;
array of struct sub_0ec68268;
mapping of uint256 poolId1;
mapping of struct userInfo;
uint256 totalAllocPoint;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function poolLength() payable {
    return poolInfo.length
}

function sub_0ec68268(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0ec68268.length
    return address(sub_0ec68268[arg1].field_0), 
           address(sub_0ec68268[arg1].field_256),
           address(sub_0ec68268[arg1].field_512),
           address(sub_0ec68268[arg1].field_768),
           sub_0ec68268[arg1].field_1024,
           sub_0ec68268[arg1].field_1280,
           address(sub_0ec68268[arg1].field_1536),
           sub_0ec68268[arg1].field_1792,
           address(sub_0ec68268[arg1].field_2048),
           sub_0ec68268[arg1].field_2304
}

function sub_13bb3c33(?) payable {
    return sub_13bb3c33Address
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return address(poolInfo[arg1].field_0), 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           bool(uint8(poolInfo[arg1].field_1536))
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

function devFeeStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < devFeeStage.length
    return devFeeStage[arg1]
}

function devDepFee() payable {
    return devDepFee
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

function sub_69b8a0b8(?) payable {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        require owner == msg.sender
    userDepFee = arg1
    devDepFee = arg2
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

function sub_eb196895(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require bool(arg2) != bool(uint8(poolInfo[arg1].field_1536))
    uint8(poolInfo[arg1].field_1536) = uint8(bool(arg2))
    emit 0x1c521750: arg1, bool(arg2)
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

function reclaimOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if previousOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the previous owner'
    if previousOwner != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner must be previous owner'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_557e91ff(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_1280 and poolInfo[arg1].field_1024 > -1 / poolInfo[arg1].field_1280:
        revert with 0, 17
    if not poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024:
        return 0
    if arg2 and poolInfo[arg1].field_1024 > -1 / arg2:
        revert with 0, 17
    if not poolInfo[arg1].field_1280:
        revert with 0, 18
    return (arg2 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_1280)
}

function sub_d6dc4441(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_1280 and poolInfo[arg1].field_1024 > -1 / poolInfo[arg1].field_1280:
        revert with 0, 17
    if not poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024:
        return arg2
    if arg2 and poolInfo[arg1].field_1280 > -1 / arg2:
        revert with 0, 17
    if not poolInfo[arg1].field_1024:
        revert with 0, 18
    return (arg2 * poolInfo[arg1].field_1280 / poolInfo[arg1].field_1024)
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

function setDevFeeStage(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
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
    devFeeStage.length = arg1.length
    if not arg1.length:
        idx = 0
        while devFeeStage.length > idx:
            devFeeStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            devFeeStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while devFeeStage.length > idx:
            devFeeStage[idx] = 0
            idx = idx + 1
            continue 
}

function setUserFeeStage(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
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
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
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
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
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
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
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
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
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

function sub_51dcfd76(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_0ec68268.length:
        revert with 0, 50
    require ext_code.size(address(sub_0ec68268[arg1].field_1536))
    staticcall address(sub_0ec68268[arg1].field_1536).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(sub_0ec68268[arg1].field_2048):
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        if address(sub_0ec68268[arg1].field_0):
            if not sub_0ec68268[arg1].field_1280:
                require ext_code.size(address(sub_0ec68268[arg1].field_0))
                call address(sub_0ec68268[arg1].field_0).harvest(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_0ec68268[arg1].field_1024, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 1 == sub_0ec68268[arg1].field_1280:
                    require ext_code.size(address(sub_0ec68268[arg1].field_256))
                    call address(sub_0ec68268[arg1].field_256).getReward() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if address(sub_0ec68268[arg1].field_512):
            require ext_code.size(address(sub_0ec68268[arg1].field_512))
            call address(sub_0ec68268[arg1].field_512).0xe2bbb158 with:
                 gas gas_remaining wei
                args sub_0ec68268[arg1].field_1024, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        require ext_code.size(address(sub_0ec68268[arg1].field_1536))
        staticcall address(sub_0ec68268[arg1].field_1536).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(sub_0ec68268[arg1].field_2048):
            require ext_code.size(address(sub_0ec68268[arg1].field_2048))
            staticcall address(sub_0ec68268[arg1].field_2048).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if sub_0ec68268[arg1].field_2304 > !ext_call.return_data[0]:
                revert with 0, 17
            sub_0ec68268[arg1].field_2304 += ext_call.return_data[0]
    else:
        require ext_code.size(address(sub_0ec68268[arg1].field_2048))
        staticcall address(sub_0ec68268[arg1].field_2048).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        if address(sub_0ec68268[arg1].field_0):
            if not sub_0ec68268[arg1].field_1280:
                require ext_code.size(address(sub_0ec68268[arg1].field_0))
                call address(sub_0ec68268[arg1].field_0).harvest(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_0ec68268[arg1].field_1024, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 1 == sub_0ec68268[arg1].field_1280:
                    require ext_code.size(address(sub_0ec68268[arg1].field_256))
                    call address(sub_0ec68268[arg1].field_256).getReward() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if address(sub_0ec68268[arg1].field_512):
            require ext_code.size(address(sub_0ec68268[arg1].field_512))
            call address(sub_0ec68268[arg1].field_512).0xe2bbb158 with:
                 gas gas_remaining wei
                args sub_0ec68268[arg1].field_1024, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        require ext_code.size(address(sub_0ec68268[arg1].field_1536))
        staticcall address(sub_0ec68268[arg1].field_1536).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(sub_0ec68268[arg1].field_2048):
            require ext_code.size(address(sub_0ec68268[arg1].field_2048))
            staticcall address(sub_0ec68268[arg1].field_2048).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if sub_0ec68268[arg1].field_2304 > !0:
                revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if sub_0ec68268[arg1].field_1792 > !0:
        revert with 0, 17
}

function sub_48b83766(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_0ec68268.length:
        revert with 0, 50
    mem[0] = 26
    if not address(sub_0ec68268[arg1].field_0):
        if not address(sub_0ec68268[arg1].field_512):
            return 0, 0, 128, 0, 0
        mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[100] = sub_0ec68268[arg1].field_1024
        mem[132] = this.address
        require ext_code.size(address(sub_0ec68268[arg1].field_512))
        staticcall address(sub_0ec68268[arg1].field_512).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_0ec68268[arg1].field_1024, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _14 = mem[96 len 4], Mask(224, 0, sub_0ec68268[arg1].field_1056)
        require uint32(sub_0ec68268[arg1].field_1024), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
        _26 = uint32(this.address), mem[164 len 28]
        require uint32(this.address), mem[164 len 28] <= test266151307()
        require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
        _29 = mem[uint32(this.address), mem[164 len 28] + 96]
        if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _29
        require _26 + _29 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_29)] = mem[_26 + 128 len ceil32(_29)]
        if ceil32(_29) <= _29:
            _80 = mem[192]
            mem[mem[64]] = _14
            mem[mem[64] + 32] = Mask(160, 32, this.address) >> 32
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _29
            mem[mem[64] + 160 len ceil32(_29)] = mem[ceil32(return_data.size) + 128 len ceil32(_29)]
            if ceil32(_29) > _29:
                mem[_29 + mem[64] + 160] = 0
            mem[mem[64] + 96] = _80
            return _14, Mask(160, 32, this.address) << 64, Array(len=_29, data=mem[mem[64] + 160 len ceil32(_29)]), _80
        mem[_29 + ceil32(return_data.size) + 128] = 0
        _81 = mem[192]
        mem[mem[64]] = _14
        mem[mem[64] + 32] = Mask(160, 32, this.address) >> 32
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _29
        mem[mem[64] + 160 len ceil32(_29)] = mem[ceil32(return_data.size) + 128 len ceil32(_29)]
        if ceil32(_29) > _29:
            mem[_29 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _81
        return _14, Mask(160, 32, this.address) << 64, Array(len=_29, data=mem[mem[64] + 160 len ceil32(_29)]), _81
    if not sub_0ec68268[arg1].field_1280:
        require ext_code.size(address(sub_0ec68268[arg1].field_0))
        staticcall address(sub_0ec68268[arg1].field_0).0x98969e82 with:
                gas gas_remaining wei
               args sub_0ec68268[arg1].field_1024, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], 0, 128, 0, 0
    if 1 == sub_0ec68268[arg1].field_1280:
        require ext_code.size(address(sub_0ec68268[arg1].field_256))
        staticcall address(sub_0ec68268[arg1].field_256).earned(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], 0, 128, 0, 0
    if not address(sub_0ec68268[arg1].field_512):
        return 0, 0, 128, 0, 0
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = sub_0ec68268[arg1].field_1024
    mem[132] = this.address
    require ext_code.size(address(sub_0ec68268[arg1].field_512))
    staticcall address(sub_0ec68268[arg1].field_512).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_0ec68268[arg1].field_1024, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _21 = mem[96 len 4], Mask(224, 0, sub_0ec68268[arg1].field_1056)
    require uint32(sub_0ec68268[arg1].field_1024), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
    _31 = uint32(this.address), mem[164 len 28]
    require uint32(this.address), mem[164 len 28] <= test266151307()
    require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
    _37 = mem[uint32(this.address), mem[164 len 28] + 96]
    if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _37
    require _31 + _37 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_37)] = mem[_31 + 128 len ceil32(_37)]
    if ceil32(_37) <= _37:
        _82 = mem[192]
        mem[mem[64]] = _21
        mem[mem[64] + 32] = Mask(160, 32, this.address) >> 32
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _37
        mem[mem[64] + 160 len ceil32(_37)] = mem[ceil32(return_data.size) + 128 len ceil32(_37)]
        if ceil32(_37) > _37:
            mem[_37 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _82
        return _21, Mask(160, 32, this.address) << 64, Array(len=_37, data=mem[mem[64] + 160 len ceil32(_37)]), _82
    mem[_37 + ceil32(return_data.size) + 128] = 0
    _83 = mem[192]
    mem[mem[64]] = _21
    mem[mem[64] + 32] = Mask(160, 32, this.address) >> 32
    mem[mem[64] + 64] = 128
    mem[mem[64] + 128] = _37
    mem[mem[64] + 160 len ceil32(_37)] = mem[ceil32(return_data.size) + 128 len ceil32(_37)]
    if ceil32(_37) > _37:
        mem[_37 + mem[64] + 160] = 0
    mem[mem[64] + 96] = _83
    return _21, Mask(160, 32, this.address) << 64, Array(len=_37, data=mem[mem[64] + 160 len ceil32(_37)]), _83
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
        staticcall sub_13bb3c33Address.0x355274ea with:
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
        staticcall sub_13bb3c33Address.0x355274ea with:
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
    staticcall sub_13bb3c33Address.0x355274ea with:
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

function sub_6b966b9f(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_0ec68268.length:
        revert with 0, 50
    mem[100] = this.address
    require ext_code.size(address(sub_0ec68268[arg1].field_1536))
    staticcall address(sub_0ec68268[arg1].field_1536).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    if not address(sub_0ec68268[arg1].field_2048):
        require ext_code.size(address(sub_0ec68268[arg1].field_1536))
        staticcall address(sub_0ec68268[arg1].field_1536).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'amount > farmBal'
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 164] = arg2
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(sub_0ec68268[arg1].field_1536)):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(sub_0ec68268[arg1].field_1536) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) << 288)
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
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        require ext_code.size(address(sub_0ec68268[arg1].field_1536))
        staticcall address(sub_0ec68268[arg1].field_1536).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(sub_0ec68268[arg1].field_2048):
            require ext_code.size(address(sub_0ec68268[arg1].field_2048))
            staticcall address(sub_0ec68268[arg1].field_2048).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if sub_0ec68268[arg1].field_2304 > !ext_call.return_data[0]:
                revert with 0, 17
            sub_0ec68268[arg1].field_2304 += ext_call.return_data[0]
    else:
        require ext_code.size(address(sub_0ec68268[arg1].field_2048))
        staticcall address(sub_0ec68268[arg1].field_2048).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(sub_0ec68268[arg1].field_1536))
        staticcall address(sub_0ec68268[arg1].field_1536).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'amount > farmBal'
        mem[(4 * ceil32(return_data.size)) + 132] = address(arg3)
        mem[(4 * ceil32(return_data.size)) + 164] = arg2
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(sub_0ec68268[arg1].field_1536)):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call address(sub_0ec68268[arg1].field_1536) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) << 288)
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
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        require ext_code.size(address(sub_0ec68268[arg1].field_1536))
        staticcall address(sub_0ec68268[arg1].field_1536).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(sub_0ec68268[arg1].field_2048):
            require ext_code.size(address(sub_0ec68268[arg1].field_2048))
            staticcall address(sub_0ec68268[arg1].field_2048).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if sub_0ec68268[arg1].field_2304 > !0:
                revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if sub_0ec68268[arg1].field_1792 > !0:
        revert with 0, 17
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_1280 <= 0:
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
        staticcall sub_13bb3c33Address.0x355274ea with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 < 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if not poolInfo[arg1].field_1280:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        staticcall sub_13bb3c33Address.0x355274ea with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 < (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if not poolInfo[arg1].field_1280:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
    staticcall sub_13bb3c33Address.0x355274ea with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
        if not poolInfo[arg1].field_1280:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
    if not poolInfo[arg1].field_1280:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[0] = 25
    if block.number > poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1280:
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
                staticcall sub_13bb3c33Address.0x355274ea with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < 0 / totalAllocPoint:
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
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
                    call sub_13bb3c33Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    poolInfo[arg1].field_512 = block.number
                    if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * sub_1f84593e / 100:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 0 / totalAllocPoint * sub_1f84593e / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 0 / totalAllocPoint * sub_85ee2a7f / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderaddr, 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                idx = 0
                s = 0
                t = stor[(7 * arg1) + sha3(mem[0]) + 2]
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
                    staticcall sub_13bb3c33Address.0x355274ea with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 < (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not poolInfo[arg1].field_1280:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
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
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[arg1].field_1280:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                        poolInfo[arg1].field_512 = block.number
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args devaddr, 75 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 45 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 85 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderaddr, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x282d3fdf with:
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
                staticcall sub_13bb3c33Address.0x355274ea with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
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
                    call sub_13bb3c33Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1280
                    poolInfo[arg1].field_512 = block.number
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args devaddr, 75 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 45 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 85 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderaddr, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args founderaddr, 95 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 25
        if block.number > poolInfo[idx].field_512:
            if not poolInfo[idx].field_1280:
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
                    _229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _231 = mem[_229]
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.0x355274ea with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _237 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _239 = mem[_237]
                    if mem[_237] < _231:
                        revert with 0, 17
                    if mem[_237] - _231 < 0 / totalAllocPoint:
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _239 - _231
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), _239 - _231
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _239 - _231 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * _239) - (10^12 * _231) / poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * _239) - (10^12 * _231) / poolInfo[idx].field_1280
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
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
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
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_1f84593e / 100:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
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
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
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
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
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
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    s = 0
                    t = 0
                    u = stor[(7 * idx) + sha3(mem[0]) + 2]
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
                        _454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _456 = mem[_454]
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.0x355274ea with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _461 = mem[_460]
                        if mem[_460] < _456:
                            revert with 0, 17
                        if mem[_460] - _456 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _461 - _456
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), _461 - _456
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _461 - _456 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1280:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _461) - (10^12 * _456) / poolInfo[idx].field_1280):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _461) - (10^12 * _456) / poolInfo[idx].field_1280
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
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1280:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
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
                    _446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _447 = mem[_446]
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.0x355274ea with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _451 = mem[_450]
                    if mem[_450] < _447:
                        revert with 0, 17
                    if mem[_450] - _447 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _451 - _447
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), _451 - _447
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _451 - _447 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * _451) - (10^12 * _447) / poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * _451) - (10^12 * _447) / poolInfo[idx].field_1280
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
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
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
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
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
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
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
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
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
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 25
            if block.number > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1280:
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
                        staticcall sub_13bb3c33Address.0x355274ea with:
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
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), _247 - _239
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _247 - _239 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1280:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _247) - (10^12 * _239) / poolInfo[idx].field_1280):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _247) - (10^12 * _239) / poolInfo[idx].field_1280
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
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1280:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * sub_1f84593e / 100:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        s = 0
                        t = 0
                        u = stor[(7 * idx) + sha3(mem[0]) + 2]
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
                            staticcall sub_13bb3c33Address.0x355274ea with:
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
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _469 - _464
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _469 - _464 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _469) - (10^12 * _464) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _469) - (10^12 * _464) / poolInfo[idx].field_1280
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
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
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
                        staticcall sub_13bb3c33Address.0x355274ea with:
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
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), _459 - _455
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _459 - _455 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1280:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _459) - (10^12 * _455) / poolInfo[idx].field_1280):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _459) - (10^12 * _455) / poolInfo[idx].field_1280
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
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1280:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
                                     gas gas_remaining wei
                                    args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
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
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[0] = 25
    if block.number > poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1280:
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
                staticcall sub_13bb3c33Address.0x355274ea with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < 0 / totalAllocPoint:
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
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
                    call sub_13bb3c33Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    poolInfo[arg1].field_512 = block.number
                    if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * sub_1f84593e / 100:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 0 / totalAllocPoint * sub_1f84593e / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 0 / totalAllocPoint * sub_85ee2a7f / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderaddr, 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                idx = 0
                s = 0
                t = stor[(7 * arg1) + sha3(mem[0]) + 2]
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
                    staticcall sub_13bb3c33Address.0x355274ea with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 < (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not poolInfo[arg1].field_1280:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
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
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[arg1].field_1280:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                        poolInfo[arg1].field_512 = block.number
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args devaddr, 75 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args sub_d1ae7d70Address, 45 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x282d3fdf with:
                                 gas gas_remaining wei
                                args sub_1e0872d7Address, 85 * (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderaddr, (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (s * REWARD_PER_BLOCK * poolInfo[arg1].field_256) + (block.number * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) - (t * rEWARD_MULTIPLIER[idx] * REWARD_PER_BLOCK * poolInfo[arg1].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                revert with 0, 17
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x282d3fdf with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
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
                                call sub_13bb3c33Address.0x282d3fdf with:
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
                staticcall sub_13bb3c33Address.0x355274ea with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 < s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint:
                    require ext_code.size(sub_13bb3c33Address)
                    call sub_13bb3c33Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
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
                    call sub_13bb3c33Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1280
                    poolInfo[arg1].field_512 = block.number
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args devaddr, 75 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100 > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args sub_d1ae7d70Address, 45 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 > 0x303030303030303030303030303030303030303030303030303030303030303:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
                             gas gas_remaining wei
                            args sub_1e0872d7Address, 85 * s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderaddr, s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s * REWARD_PER_BLOCK * poolInfo[arg1].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        require ext_code.size(sub_13bb3c33Address)
                        call sub_13bb3c33Address.0x282d3fdf with:
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
                call sub_13bb3c33Address.0x282d3fdf with:
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
                call sub_13bb3c33Address.0x282d3fdf with:
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

function sub_9138a83a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 288
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require arg9 == bool(arg9)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        if arg9:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 25
                if block.number > poolInfo[idx].field_512:
                    if not poolInfo[idx].field_1280:
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
                            _581 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _585 = mem[_581]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.0x355274ea with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _601 = mem[_597]
                            if mem[_597] < _585:
                                revert with 0, 17
                            if mem[_597] - _585 < 0 / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _601 - _585
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _601 - _585
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _601 - _585 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _601) - (10^12 * _585) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _601) - (10^12 * _585) / poolInfo[idx].field_1280
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
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * sub_1f84593e / 100:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            s = 0
                            t = 0
                            u = stor[(7 * idx) + sha3(mem[0]) + 2]
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
                                _1031 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1035 = mem[_1031]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1043 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1045 = mem[_1043]
                                if mem[_1043] < _1035:
                                    revert with 0, 17
                                if mem[_1043] - _1035 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _1045 - _1035
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _1045 - _1035
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _1045 - _1035 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _1045) - (10^12 * _1035) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _1045) - (10^12 * _1035) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
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
                            _1015 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1017 = mem[_1015]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.0x355274ea with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1023 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1025 = mem[_1023]
                            if mem[_1023] < _1017:
                                revert with 0, 17
                            if mem[_1023] - _1017 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _1025 - _1017
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _1025 - _1017
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _1025 - _1017 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _1025) - (10^12 * _1017) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _1025) - (10^12 * _1017) / poolInfo[idx].field_1280
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
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if address(arg3):
            revert with 0, 'Both add != 0'
        if arg9:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 25
                if block.number > poolInfo[idx].field_512:
                    if not poolInfo[idx].field_1280:
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
                            _582 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _586 = mem[_582]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.0x355274ea with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _602 = mem[_598]
                            if mem[_598] < _586:
                                revert with 0, 17
                            if mem[_598] - _586 < 0 / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _602 - _586
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _602 - _586
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _602 - _586 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _602) - (10^12 * _586) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _602) - (10^12 * _586) / poolInfo[idx].field_1280
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
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * sub_1f84593e / 100:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            s = 0
                            t = 0
                            u = stor[(7 * idx) + sha3(mem[0]) + 2]
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
                                _1032 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1036 = mem[_1032]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1044 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1046 = mem[_1044]
                                if mem[_1044] < _1036:
                                    revert with 0, 17
                                if mem[_1044] - _1036 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _1046 - _1036
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _1046 - _1036
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _1046 - _1036 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _1046) - (10^12 * _1036) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _1046) - (10^12 * _1036) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
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
                            _1016 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1018 = mem[_1016]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.0x355274ea with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1024 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1026 = mem[_1024]
                            if mem[_1024] < _1018:
                                revert with 0, 17
                            if mem[_1024] - _1018 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _1026 - _1018
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _1026 - _1018
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _1026 - _1018 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _1026) - (10^12 * _1018) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _1026) - (10^12 * _1018) / poolInfo[idx].field_1280
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
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
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
                                    call sub_13bb3c33Address.0x282d3fdf with:
                                         gas gas_remaining wei
                                        args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if arg1 >= sub_0ec68268.length:
        revert with 0, 50
    address(sub_0ec68268[arg1].field_0) = address(arg2)
    address(sub_0ec68268[arg1].field_256) = address(arg2)
    if arg1 >= sub_0ec68268.length:
        revert with 0, 50
    if arg6 != 1:
        address(sub_0ec68268[arg1].field_512) = address(arg3)
    else:
        if not address(arg2):
            address(sub_0ec68268[arg1].field_512) = address(arg4)
        else:
            address(sub_0ec68268[arg1].field_512) = address(arg3)
    address(sub_0ec68268[arg1].field_768) = address(arg3)
    sub_0ec68268[arg1].field_1024 = arg5
    sub_0ec68268[arg1].field_1280 = arg6
    address(sub_0ec68268[arg1].field_1536) = address(arg7)
    address(sub_0ec68268[arg1].field_2048) = address(arg8)
}

function sub_fd432562(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 320
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg8 == address(arg8)
    require arg9 == address(arg9)
    require arg10 == bool(arg10)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = address(arg2)
    mem[32] = 27
    if poolId1[address(arg2)]:
        revert with 0, 'lp is in pool'
    if not arg7:
        if not address(arg3):
            if not arg10:
                if totalAllocPoint > !arg1:
                    revert with 0, 17
                totalAllocPoint += arg1
                if 1 > !poolInfo.length:
                    revert with 0, 17
                poolId1[address(arg2)] = poolInfo.length + 1
                poolInfo.length++
                address(poolInfo[poolInfo.length].field_0) = address(arg2)
                poolInfo[poolInfo.length].field_256 = arg1
                if block.number > START_BLOCK:
                    poolInfo[poolInfo.length].field_512 = block.number
                else:
                    poolInfo[poolInfo.length].field_512 = START_BLOCK
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = 0
                poolInfo[poolInfo.length].field_1280 = 0
                uint8(poolInfo[poolInfo.length].field_1536) = 1
                sub_0ec68268.length++
                address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                if arg7 != 1:
                    address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                    address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                    sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                    sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                    address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                    sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                    address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                    sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                    if address(arg3):
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not address(arg3):
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                    else:
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if address(arg4):
                    if arg7 != 1:
                        if address(arg4):
                            if not arg7:
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(arg4))
                        call address(arg4).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 25
                    if block.number > poolInfo[idx].field_512:
                        if not poolInfo[idx].field_1280:
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
                                _2978 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3024 = mem[_2978]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3086 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3120 = mem[_3086]
                                if mem[_3086] < _3024:
                                    revert with 0, 17
                                if mem[_3086] - _3024 < 0 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _3120 - _3024
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _3120 - _3024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _3120 - _3024 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _3120) - (10^12 * _3024) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _3120) - (10^12 * _3024) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                s = 0
                                t = 0
                                u = stor[(7 * idx) + sha3(mem[0]) + 2]
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
                                    _4224 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4232 = mem[_4224]
                                    require ext_code.size(sub_13bb3c33Address)
                                    staticcall sub_13bb3c33Address.0x355274ea with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4248 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4252 = mem[_4248]
                                    if mem[_4248] < _4232:
                                        revert with 0, 17
                                    if mem[_4248] - _4232 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = _4252 - _4232
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), _4252 - _4232
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if _4252 - _4232 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !((10^12 * _4252) - (10^12 * _4232) / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += (10^12 * _4252) - (10^12 * _4232) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
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
                                _4192 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4196 = mem[_4192]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4208 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4212 = mem[_4208]
                                if mem[_4208] < _4196:
                                    revert with 0, 17
                                if mem[_4208] - _4196 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _4212 - _4196
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _4212 - _4196
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _4212 - _4196 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _4212) - (10^12 * _4196) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _4212) - (10^12 * _4196) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
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
                mem[0] = address(arg2)
                mem[32] = 27
                poolId1[address(arg2)] = poolInfo.length + 1
                if block.number > START_BLOCK:
                    _2497 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2497] = address(arg2)
                    mem[_2497 + 32] = arg1
                    mem[_2497 + 64] = block.number
                    mem[_2497 + 96] = 0
                    mem[_2497 + 128] = 0
                    mem[_2497 + 160] = 0
                    mem[_2497 + 192] = 1
                    poolInfo.length++
                    mem[0] = 25
                    address(poolInfo[poolInfo.length].field_0) = address(arg2)
                    poolInfo[poolInfo.length].field_256 = arg1
                    poolInfo[poolInfo.length].field_512 = block.number
                    poolInfo[poolInfo.length].field_768 = 0
                    poolInfo[poolInfo.length].field_1024 = 0
                    poolInfo[poolInfo.length].field_1280 = 0
                    uint8(poolInfo[poolInfo.length].field_1536) = 1
                    _2506 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2506] = address(arg3)
                    mem[_2506 + 32] = address(arg3)
                    if arg7 != 1:
                        mem[_2506 + 64] = address(arg4)
                        mem[_2506 + 96] = address(arg4)
                        mem[_2506 + 128] = arg6
                        mem[_2506 + 160] = arg7
                        mem[_2506 + 192] = address(arg8)
                        mem[_2506 + 224] = 0
                        mem[_2506 + 256] = address(arg9)
                        mem[_2506 + 288] = 0
                        sub_0ec68268.length++
                        mem[0] = 26
                        address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        if not address(arg3):
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3040 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3040] == bool(mem[_3040])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2972 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2972] == bool(mem[_2972])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3172 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3172] == bool(mem[_3172])
                        else:
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2900] == bool(mem[_2900])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3276 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3276] == bool(mem[_3276])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3196 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3196] == bool(mem[_3196])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3384 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3384] == bool(mem[_3384])
                    else:
                        if not address(arg3):
                            mem[_2506 + 64] = address(arg5)
                            mem[_2506 + 96] = address(arg4)
                            mem[_2506 + 128] = arg6
                            mem[_2506 + 160] = arg7
                            mem[_2506 + 192] = address(arg8)
                            mem[_2506 + 224] = 0
                            mem[_2506 + 256] = address(arg9)
                            mem[_2506 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3068 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3068] == bool(mem[_3068])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3001 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3001] == bool(mem[_3001])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3197 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3197] == bool(mem[_3197])
                        else:
                            mem[_2506 + 64] = address(arg4)
                            mem[_2506 + 96] = address(arg4)
                            mem[_2506 + 128] = arg6
                            mem[_2506 + 160] = arg7
                            mem[_2506 + 192] = address(arg8)
                            mem[_2506 + 224] = 0
                            mem[_2506 + 256] = address(arg9)
                            mem[_2506 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2917] == bool(mem[_2917])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3300 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3300] == bool(mem[_3300])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3222 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3222] == bool(mem[_3222])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3396 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3396] == bool(mem[_3396])
                else:
                    _2508 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2508] = address(arg2)
                    mem[_2508 + 32] = arg1
                    mem[_2508 + 64] = START_BLOCK
                    mem[_2508 + 96] = 0
                    mem[_2508 + 128] = 0
                    mem[_2508 + 160] = 0
                    mem[_2508 + 192] = 1
                    poolInfo.length++
                    mem[0] = 25
                    address(poolInfo[poolInfo.length].field_0) = address(arg2)
                    poolInfo[poolInfo.length].field_256 = arg1
                    poolInfo[poolInfo.length].field_512 = START_BLOCK
                    poolInfo[poolInfo.length].field_768 = 0
                    poolInfo[poolInfo.length].field_1024 = 0
                    poolInfo[poolInfo.length].field_1280 = 0
                    uint8(poolInfo[poolInfo.length].field_1536) = 1
                    _2517 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2517] = address(arg3)
                    mem[_2517 + 32] = address(arg3)
                    if arg7 != 1:
                        mem[_2517 + 64] = address(arg4)
                        mem[_2517 + 96] = address(arg4)
                        mem[_2517 + 128] = arg6
                        mem[_2517 + 160] = arg7
                        mem[_2517 + 192] = address(arg8)
                        mem[_2517 + 224] = 0
                        mem[_2517 + 256] = address(arg9)
                        mem[_2517 + 288] = 0
                        sub_0ec68268.length++
                        mem[0] = 26
                        address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        if not address(arg3):
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3042 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3042] == bool(mem[_3042])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2975 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2975] == bool(mem[_2975])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3175 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3175] == bool(mem[_3175])
                        else:
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2902 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2902] == bool(mem[_2902])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3278 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3278] == bool(mem[_3278])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3199 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3199] == bool(mem[_3199])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3385 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3385] == bool(mem[_3385])
                    else:
                        if not address(arg3):
                            mem[_2517 + 64] = address(arg5)
                            mem[_2517 + 96] = address(arg4)
                            mem[_2517 + 128] = arg6
                            mem[_2517 + 160] = arg7
                            mem[_2517 + 192] = address(arg8)
                            mem[_2517 + 224] = 0
                            mem[_2517 + 256] = address(arg9)
                            mem[_2517 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3069 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3069] == bool(mem[_3069])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3003 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3003] == bool(mem[_3003])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3200 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3200] == bool(mem[_3200])
                        else:
                            mem[_2517 + 64] = address(arg4)
                            mem[_2517 + 96] = address(arg4)
                            mem[_2517 + 128] = arg6
                            mem[_2517 + 160] = arg7
                            mem[_2517 + 192] = address(arg8)
                            mem[_2517 + 224] = 0
                            mem[_2517 + 256] = address(arg9)
                            mem[_2517 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2919 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2919] == bool(mem[_2919])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3301 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3301] == bool(mem[_3301])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3225 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3225] == bool(mem[_3225])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3397 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3397] == bool(mem[_3397])
        else:
            if address(arg4):
                revert with 0, 'Both add != 0'
            if not arg10:
                if totalAllocPoint > !arg1:
                    revert with 0, 17
                totalAllocPoint += arg1
                if 1 > !poolInfo.length:
                    revert with 0, 17
                poolId1[address(arg2)] = poolInfo.length + 1
                poolInfo.length++
                address(poolInfo[poolInfo.length].field_0) = address(arg2)
                poolInfo[poolInfo.length].field_256 = arg1
                if block.number > START_BLOCK:
                    poolInfo[poolInfo.length].field_512 = block.number
                else:
                    poolInfo[poolInfo.length].field_512 = START_BLOCK
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = 0
                poolInfo[poolInfo.length].field_1280 = 0
                uint8(poolInfo[poolInfo.length].field_1536) = 1
                sub_0ec68268.length++
                address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                if arg7 != 1:
                    address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                    address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                    sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                    sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                    address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                    sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                    address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                    sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                    if address(arg3):
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not address(arg3):
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                    else:
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if address(arg4):
                    if arg7 != 1:
                        if address(arg4):
                            if not arg7:
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(arg4))
                        call address(arg4).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 25
                    if block.number > poolInfo[idx].field_512:
                        if not poolInfo[idx].field_1280:
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
                                _2985 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3029 = mem[_2985]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3089 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3125 = mem[_3089]
                                if mem[_3089] < _3029:
                                    revert with 0, 17
                                if mem[_3089] - _3029 < 0 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _3125 - _3029
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _3125 - _3029
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _3125 - _3029 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _3125) - (10^12 * _3029) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _3125) - (10^12 * _3029) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                s = 0
                                t = 0
                                u = stor[(7 * idx) + sha3(mem[0]) + 2]
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
                                    _4225 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4233 = mem[_4225]
                                    require ext_code.size(sub_13bb3c33Address)
                                    staticcall sub_13bb3c33Address.0x355274ea with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4249 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4253 = mem[_4249]
                                    if mem[_4249] < _4233:
                                        revert with 0, 17
                                    if mem[_4249] - _4233 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = _4253 - _4233
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), _4253 - _4233
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if _4253 - _4233 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !((10^12 * _4253) - (10^12 * _4233) / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += (10^12 * _4253) - (10^12 * _4233) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
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
                                _4193 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4197 = mem[_4193]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4209 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4213 = mem[_4209]
                                if mem[_4209] < _4197:
                                    revert with 0, 17
                                if mem[_4209] - _4197 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _4213 - _4197
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _4213 - _4197
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _4213 - _4197 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _4213) - (10^12 * _4197) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _4213) - (10^12 * _4197) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
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
                mem[0] = address(arg2)
                mem[32] = 27
                poolId1[address(arg2)] = poolInfo.length + 1
                if block.number > START_BLOCK:
                    _2519 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2519] = address(arg2)
                    mem[_2519 + 32] = arg1
                    mem[_2519 + 64] = block.number
                    mem[_2519 + 96] = 0
                    mem[_2519 + 128] = 0
                    mem[_2519 + 160] = 0
                    mem[_2519 + 192] = 1
                    poolInfo.length++
                    mem[0] = 25
                    address(poolInfo[poolInfo.length].field_0) = address(arg2)
                    poolInfo[poolInfo.length].field_256 = arg1
                    poolInfo[poolInfo.length].field_512 = block.number
                    poolInfo[poolInfo.length].field_768 = 0
                    poolInfo[poolInfo.length].field_1024 = 0
                    poolInfo[poolInfo.length].field_1280 = 0
                    uint8(poolInfo[poolInfo.length].field_1536) = 1
                    _2528 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2528] = address(arg3)
                    mem[_2528 + 32] = address(arg3)
                    if arg7 != 1:
                        mem[_2528 + 64] = address(arg4)
                        mem[_2528 + 96] = address(arg4)
                        mem[_2528 + 128] = arg6
                        mem[_2528 + 160] = arg7
                        mem[_2528 + 192] = address(arg8)
                        mem[_2528 + 224] = 0
                        mem[_2528 + 256] = address(arg9)
                        mem[_2528 + 288] = 0
                        sub_0ec68268.length++
                        mem[0] = 26
                        address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        if not address(arg3):
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3047 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3047] == bool(mem[_3047])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2979 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2979] == bool(mem[_2979])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3178 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3178] == bool(mem[_3178])
                        else:
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2904 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2904] == bool(mem[_2904])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3282 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3282] == bool(mem[_3282])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3202 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3202] == bool(mem[_3202])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3387 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3387] == bool(mem[_3387])
                    else:
                        if not address(arg3):
                            mem[_2528 + 64] = address(arg5)
                            mem[_2528 + 96] = address(arg4)
                            mem[_2528 + 128] = arg6
                            mem[_2528 + 160] = arg7
                            mem[_2528 + 192] = address(arg8)
                            mem[_2528 + 224] = 0
                            mem[_2528 + 256] = address(arg9)
                            mem[_2528 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3072 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3072] == bool(mem[_3072])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3006 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3006] == bool(mem[_3006])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3203 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3203] == bool(mem[_3203])
                        else:
                            mem[_2528 + 64] = address(arg4)
                            mem[_2528 + 96] = address(arg4)
                            mem[_2528 + 128] = arg6
                            mem[_2528 + 160] = arg7
                            mem[_2528 + 192] = address(arg8)
                            mem[_2528 + 224] = 0
                            mem[_2528 + 256] = address(arg9)
                            mem[_2528 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2923 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2923] == bool(mem[_2923])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3303 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3303] == bool(mem[_3303])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3230 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3230] == bool(mem[_3230])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3398 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3398] == bool(mem[_3398])
                else:
                    _2530 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2530] = address(arg2)
                    mem[_2530 + 32] = arg1
                    mem[_2530 + 64] = START_BLOCK
                    mem[_2530 + 96] = 0
                    mem[_2530 + 128] = 0
                    mem[_2530 + 160] = 0
                    mem[_2530 + 192] = 1
                    poolInfo.length++
                    mem[0] = 25
                    address(poolInfo[poolInfo.length].field_0) = address(arg2)
                    poolInfo[poolInfo.length].field_256 = arg1
                    poolInfo[poolInfo.length].field_512 = START_BLOCK
                    poolInfo[poolInfo.length].field_768 = 0
                    poolInfo[poolInfo.length].field_1024 = 0
                    poolInfo[poolInfo.length].field_1280 = 0
                    uint8(poolInfo[poolInfo.length].field_1536) = 1
                    _2539 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2539] = address(arg3)
                    mem[_2539 + 32] = address(arg3)
                    if arg7 != 1:
                        mem[_2539 + 64] = address(arg4)
                        mem[_2539 + 96] = address(arg4)
                        mem[_2539 + 128] = arg6
                        mem[_2539 + 160] = arg7
                        mem[_2539 + 192] = address(arg8)
                        mem[_2539 + 224] = 0
                        mem[_2539 + 256] = address(arg9)
                        mem[_2539 + 288] = 0
                        sub_0ec68268.length++
                        mem[0] = 26
                        address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        if not address(arg3):
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3049 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3049] == bool(mem[_3049])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2982 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2982] == bool(mem[_2982])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3181 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3181] == bool(mem[_3181])
                        else:
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2906] == bool(mem[_2906])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3284 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3284] == bool(mem[_3284])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3205 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3205] == bool(mem[_3205])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3388 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3388] == bool(mem[_3388])
                    else:
                        if not address(arg3):
                            mem[_2539 + 64] = address(arg5)
                            mem[_2539 + 96] = address(arg4)
                            mem[_2539 + 128] = arg6
                            mem[_2539 + 160] = arg7
                            mem[_2539 + 192] = address(arg8)
                            mem[_2539 + 224] = 0
                            mem[_2539 + 256] = address(arg9)
                            mem[_2539 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3073 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3073] == bool(mem[_3073])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3008 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3008] == bool(mem[_3008])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3206 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3206] == bool(mem[_3206])
                        else:
                            mem[_2539 + 64] = address(arg4)
                            mem[_2539 + 96] = address(arg4)
                            mem[_2539 + 128] = arg6
                            mem[_2539 + 160] = arg7
                            mem[_2539 + 192] = address(arg8)
                            mem[_2539 + 224] = 0
                            mem[_2539 + 256] = address(arg9)
                            mem[_2539 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2925 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2925] == bool(mem[_2925])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3304 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3304] == bool(mem[_3304])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3233 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3233] == bool(mem[_3233])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3399 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3399] == bool(mem[_3399])
    else:
        if arg7 != 1:
            revert with 0, 'no != 0/1'
        if not address(arg3):
            if not arg10:
                if totalAllocPoint > !arg1:
                    revert with 0, 17
                totalAllocPoint += arg1
                if 1 > !poolInfo.length:
                    revert with 0, 17
                poolId1[address(arg2)] = poolInfo.length + 1
                poolInfo.length++
                address(poolInfo[poolInfo.length].field_0) = address(arg2)
                poolInfo[poolInfo.length].field_256 = arg1
                if block.number > START_BLOCK:
                    poolInfo[poolInfo.length].field_512 = block.number
                else:
                    poolInfo[poolInfo.length].field_512 = START_BLOCK
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = 0
                poolInfo[poolInfo.length].field_1280 = 0
                uint8(poolInfo[poolInfo.length].field_1536) = 1
                sub_0ec68268.length++
                address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                if arg7 != 1:
                    address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                    address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                    sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                    sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                    address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                    sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                    address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                    sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                    if address(arg3):
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not address(arg3):
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                    else:
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if address(arg4):
                    if arg7 != 1:
                        if address(arg4):
                            if not arg7:
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(arg4))
                        call address(arg4).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 25
                    if block.number > poolInfo[idx].field_512:
                        if not poolInfo[idx].field_1280:
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
                                _2992 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3034 = mem[_2992]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3092 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3130 = mem[_3092]
                                if mem[_3092] < _3034:
                                    revert with 0, 17
                                if mem[_3092] - _3034 < 0 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _3130 - _3034
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _3130 - _3034
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _3130 - _3034 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _3130) - (10^12 * _3034) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _3130) - (10^12 * _3034) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                s = 0
                                t = 0
                                u = stor[(7 * idx) + sha3(mem[0]) + 2]
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
                                    _4226 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4234 = mem[_4226]
                                    require ext_code.size(sub_13bb3c33Address)
                                    staticcall sub_13bb3c33Address.0x355274ea with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4250 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4254 = mem[_4250]
                                    if mem[_4250] < _4234:
                                        revert with 0, 17
                                    if mem[_4250] - _4234 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = _4254 - _4234
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), _4254 - _4234
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if _4254 - _4234 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !((10^12 * _4254) - (10^12 * _4234) / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += (10^12 * _4254) - (10^12 * _4234) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
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
                                _4194 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4198 = mem[_4194]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4210 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4214 = mem[_4210]
                                if mem[_4210] < _4198:
                                    revert with 0, 17
                                if mem[_4210] - _4198 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _4214 - _4198
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _4214 - _4198
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _4214 - _4198 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _4214) - (10^12 * _4198) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _4214) - (10^12 * _4198) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
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
                mem[0] = address(arg2)
                mem[32] = 27
                poolId1[address(arg2)] = poolInfo.length + 1
                if block.number > START_BLOCK:
                    _2541 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2541] = address(arg2)
                    mem[_2541 + 32] = arg1
                    mem[_2541 + 64] = block.number
                    mem[_2541 + 96] = 0
                    mem[_2541 + 128] = 0
                    mem[_2541 + 160] = 0
                    mem[_2541 + 192] = 1
                    poolInfo.length++
                    mem[0] = 25
                    address(poolInfo[poolInfo.length].field_0) = address(arg2)
                    poolInfo[poolInfo.length].field_256 = arg1
                    poolInfo[poolInfo.length].field_512 = block.number
                    poolInfo[poolInfo.length].field_768 = 0
                    poolInfo[poolInfo.length].field_1024 = 0
                    poolInfo[poolInfo.length].field_1280 = 0
                    uint8(poolInfo[poolInfo.length].field_1536) = 1
                    _2550 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2550] = address(arg3)
                    mem[_2550 + 32] = address(arg3)
                    if arg7 != 1:
                        mem[_2550 + 64] = address(arg4)
                        mem[_2550 + 96] = address(arg4)
                        mem[_2550 + 128] = arg6
                        mem[_2550 + 160] = arg7
                        mem[_2550 + 192] = address(arg8)
                        mem[_2550 + 224] = 0
                        mem[_2550 + 256] = address(arg9)
                        mem[_2550 + 288] = 0
                        sub_0ec68268.length++
                        mem[0] = 26
                        address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        if not address(arg3):
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3054 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3054] == bool(mem[_3054])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2986 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2986] == bool(mem[_2986])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3184 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3184] == bool(mem[_3184])
                        else:
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2908] == bool(mem[_2908])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3288 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3288] == bool(mem[_3288])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3208 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3208] == bool(mem[_3208])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3390 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3390] == bool(mem[_3390])
                    else:
                        if not address(arg3):
                            mem[_2550 + 64] = address(arg5)
                            mem[_2550 + 96] = address(arg4)
                            mem[_2550 + 128] = arg6
                            mem[_2550 + 160] = arg7
                            mem[_2550 + 192] = address(arg8)
                            mem[_2550 + 224] = 0
                            mem[_2550 + 256] = address(arg9)
                            mem[_2550 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3076 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3076] == bool(mem[_3076])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3011 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3011] == bool(mem[_3011])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3209 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3209] == bool(mem[_3209])
                        else:
                            mem[_2550 + 64] = address(arg4)
                            mem[_2550 + 96] = address(arg4)
                            mem[_2550 + 128] = arg6
                            mem[_2550 + 160] = arg7
                            mem[_2550 + 192] = address(arg8)
                            mem[_2550 + 224] = 0
                            mem[_2550 + 256] = address(arg9)
                            mem[_2550 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2929] == bool(mem[_2929])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3306 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3306] == bool(mem[_3306])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3238 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3238] == bool(mem[_3238])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3400 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3400] == bool(mem[_3400])
                else:
                    _2552 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2552] = address(arg2)
                    mem[_2552 + 32] = arg1
                    mem[_2552 + 64] = START_BLOCK
                    mem[_2552 + 96] = 0
                    mem[_2552 + 128] = 0
                    mem[_2552 + 160] = 0
                    mem[_2552 + 192] = 1
                    poolInfo.length++
                    mem[0] = 25
                    address(poolInfo[poolInfo.length].field_0) = address(arg2)
                    poolInfo[poolInfo.length].field_256 = arg1
                    poolInfo[poolInfo.length].field_512 = START_BLOCK
                    poolInfo[poolInfo.length].field_768 = 0
                    poolInfo[poolInfo.length].field_1024 = 0
                    poolInfo[poolInfo.length].field_1280 = 0
                    uint8(poolInfo[poolInfo.length].field_1536) = 1
                    _2561 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2561] = address(arg3)
                    mem[_2561 + 32] = address(arg3)
                    if arg7 != 1:
                        mem[_2561 + 64] = address(arg4)
                        mem[_2561 + 96] = address(arg4)
                        mem[_2561 + 128] = arg6
                        mem[_2561 + 160] = arg7
                        mem[_2561 + 192] = address(arg8)
                        mem[_2561 + 224] = 0
                        mem[_2561 + 256] = address(arg9)
                        mem[_2561 + 288] = 0
                        sub_0ec68268.length++
                        mem[0] = 26
                        address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        if not address(arg3):
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3056 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3056] == bool(mem[_3056])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2989 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2989] == bool(mem[_2989])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3187 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3187] == bool(mem[_3187])
                        else:
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2910] == bool(mem[_2910])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3290 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3290] == bool(mem[_3290])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3211 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3211] == bool(mem[_3211])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3391 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3391] == bool(mem[_3391])
                    else:
                        if not address(arg3):
                            mem[_2561 + 64] = address(arg5)
                            mem[_2561 + 96] = address(arg4)
                            mem[_2561 + 128] = arg6
                            mem[_2561 + 160] = arg7
                            mem[_2561 + 192] = address(arg8)
                            mem[_2561 + 224] = 0
                            mem[_2561 + 256] = address(arg9)
                            mem[_2561 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3077 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3077] == bool(mem[_3077])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3013 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3013] == bool(mem[_3013])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3212 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3212] == bool(mem[_3212])
                        else:
                            mem[_2561 + 64] = address(arg4)
                            mem[_2561 + 96] = address(arg4)
                            mem[_2561 + 128] = arg6
                            mem[_2561 + 160] = arg7
                            mem[_2561 + 192] = address(arg8)
                            mem[_2561 + 224] = 0
                            mem[_2561 + 256] = address(arg9)
                            mem[_2561 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2931 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2931] == bool(mem[_2931])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3307 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3307] == bool(mem[_3307])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3241 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3241] == bool(mem[_3241])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3401 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3401] == bool(mem[_3401])
        else:
            if address(arg4):
                revert with 0, 'Both add != 0'
            if not arg10:
                if totalAllocPoint > !arg1:
                    revert with 0, 17
                totalAllocPoint += arg1
                if 1 > !poolInfo.length:
                    revert with 0, 17
                poolId1[address(arg2)] = poolInfo.length + 1
                poolInfo.length++
                address(poolInfo[poolInfo.length].field_0) = address(arg2)
                poolInfo[poolInfo.length].field_256 = arg1
                if block.number > START_BLOCK:
                    poolInfo[poolInfo.length].field_512 = block.number
                else:
                    poolInfo[poolInfo.length].field_512 = START_BLOCK
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = 0
                poolInfo[poolInfo.length].field_1280 = 0
                uint8(poolInfo[poolInfo.length].field_1536) = 1
                sub_0ec68268.length++
                address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                if arg7 != 1:
                    address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                    address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                    sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                    sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                    address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                    sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                    address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                    sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                    if address(arg3):
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not address(arg3):
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                    else:
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if address(arg4):
                    if arg7 != 1:
                        if address(arg4):
                            if not arg7:
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(arg4))
                        call address(arg4).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 25
                    if block.number > poolInfo[idx].field_512:
                        if not poolInfo[idx].field_1280:
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
                                _2999 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3039 = mem[_2999]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3095 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3135 = mem[_3095]
                                if mem[_3095] < _3039:
                                    revert with 0, 17
                                if mem[_3095] - _3039 < 0 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _3135 - _3039
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _3135 - _3039
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _3135 - _3039 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _3135) - (10^12 * _3039) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _3135) - (10^12 * _3039) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * 0 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * 0 / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * 0 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args founderaddr, 95 * 0 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                s = 0
                                t = 0
                                u = stor[(7 * idx) + sha3(mem[0]) + 2]
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
                                    _4227 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4235 = mem[_4227]
                                    require ext_code.size(sub_13bb3c33Address)
                                    staticcall sub_13bb3c33Address.0x355274ea with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4251 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4255 = mem[_4251]
                                    if mem[_4251] < _4235:
                                        revert with 0, 17
                                    if mem[_4251] - _4235 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = _4255 - _4235
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), _4255 - _4235
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if _4255 - _4235 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !((10^12 * _4255) - (10^12 * _4235) / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += (10^12 * _4255) - (10^12 * _4235) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += 10^12 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args devaddr, 75 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args sub_d1ae7d70Address, 45 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_1f84593e / 100 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
                                                 gas gas_remaining wei
                                                args sub_1e0872d7Address, 85 * (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                            require ext_code.size(sub_13bb3c33Address)
                                            call sub_13bb3c33Address.0x40c10f19 with:
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
                                            call sub_13bb3c33Address.0x282d3fdf with:
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
                                _4195 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4199 = mem[_4195]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.0x355274ea with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4211 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4215 = mem[_4211]
                                if mem[_4211] < _4199:
                                    revert with 0, 17
                                if mem[_4211] - _4199 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _4215 - _4199
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _4215 - _4199
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _4215 - _4199 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _4215) - (10^12 * _4199) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _4215) - (10^12 * _4199) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args devaddr, 75 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_DEV / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_d1ae7d70Address, 45 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_1f84593e / 100 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
                                             gas gas_remaining wei
                                            args sub_1e0872d7Address, 85 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * sub_85ee2a7f / 10000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000:
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
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
                                        call sub_13bb3c33Address.0x282d3fdf with:
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
                mem[0] = address(arg2)
                mem[32] = 27
                poolId1[address(arg2)] = poolInfo.length + 1
                if block.number > START_BLOCK:
                    _2563 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2563] = address(arg2)
                    mem[_2563 + 32] = arg1
                    mem[_2563 + 64] = block.number
                    mem[_2563 + 96] = 0
                    mem[_2563 + 128] = 0
                    mem[_2563 + 160] = 0
                    mem[_2563 + 192] = 1
                    poolInfo.length++
                    mem[0] = 25
                    address(poolInfo[poolInfo.length].field_0) = address(arg2)
                    poolInfo[poolInfo.length].field_256 = arg1
                    poolInfo[poolInfo.length].field_512 = block.number
                    poolInfo[poolInfo.length].field_768 = 0
                    poolInfo[poolInfo.length].field_1024 = 0
                    poolInfo[poolInfo.length].field_1280 = 0
                    uint8(poolInfo[poolInfo.length].field_1536) = 1
                    _2572 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2572] = address(arg3)
                    mem[_2572 + 32] = address(arg3)
                    if arg7 != 1:
                        mem[_2572 + 64] = address(arg4)
                        mem[_2572 + 96] = address(arg4)
                        mem[_2572 + 128] = arg6
                        mem[_2572 + 160] = arg7
                        mem[_2572 + 192] = address(arg8)
                        mem[_2572 + 224] = 0
                        mem[_2572 + 256] = address(arg9)
                        mem[_2572 + 288] = 0
                        sub_0ec68268.length++
                        mem[0] = 26
                        address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        if not address(arg3):
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3061 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3061] == bool(mem[_3061])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2993 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2993] == bool(mem[_2993])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3190 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3190] == bool(mem[_3190])
                        else:
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2912] == bool(mem[_2912])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3294 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3294] == bool(mem[_3294])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3214 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3214] == bool(mem[_3214])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3393] == bool(mem[_3393])
                    else:
                        if not address(arg3):
                            mem[_2572 + 64] = address(arg5)
                            mem[_2572 + 96] = address(arg4)
                            mem[_2572 + 128] = arg6
                            mem[_2572 + 160] = arg7
                            mem[_2572 + 192] = address(arg8)
                            mem[_2572 + 224] = 0
                            mem[_2572 + 256] = address(arg9)
                            mem[_2572 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3080 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3080] == bool(mem[_3080])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3016 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3016] == bool(mem[_3016])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3215 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3215] == bool(mem[_3215])
                        else:
                            mem[_2572 + 64] = address(arg4)
                            mem[_2572 + 96] = address(arg4)
                            mem[_2572 + 128] = arg6
                            mem[_2572 + 160] = arg7
                            mem[_2572 + 192] = address(arg8)
                            mem[_2572 + 224] = 0
                            mem[_2572 + 256] = address(arg9)
                            mem[_2572 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2935 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2935] == bool(mem[_2935])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3309 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3309] == bool(mem[_3309])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3246 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3246] == bool(mem[_3246])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3402 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3402] == bool(mem[_3402])
                else:
                    _2574 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2574] = address(arg2)
                    mem[_2574 + 32] = arg1
                    mem[_2574 + 64] = START_BLOCK
                    mem[_2574 + 96] = 0
                    mem[_2574 + 128] = 0
                    mem[_2574 + 160] = 0
                    mem[_2574 + 192] = 1
                    poolInfo.length++
                    mem[0] = 25
                    address(poolInfo[poolInfo.length].field_0) = address(arg2)
                    poolInfo[poolInfo.length].field_256 = arg1
                    poolInfo[poolInfo.length].field_512 = START_BLOCK
                    poolInfo[poolInfo.length].field_768 = 0
                    poolInfo[poolInfo.length].field_1024 = 0
                    poolInfo[poolInfo.length].field_1280 = 0
                    uint8(poolInfo[poolInfo.length].field_1536) = 1
                    _2583 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2583] = address(arg3)
                    mem[_2583 + 32] = address(arg3)
                    if arg7 != 1:
                        mem[_2583 + 64] = address(arg4)
                        mem[_2583 + 96] = address(arg4)
                        mem[_2583 + 128] = arg6
                        mem[_2583 + 160] = arg7
                        mem[_2583 + 192] = address(arg8)
                        mem[_2583 + 224] = 0
                        mem[_2583 + 256] = address(arg9)
                        mem[_2583 + 288] = 0
                        sub_0ec68268.length++
                        mem[0] = 26
                        address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                        address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                        address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                        sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                        sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                        address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                        sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                        address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                        sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                        if not address(arg3):
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3063 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3063] == bool(mem[_3063])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2996 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2996] == bool(mem[_2996])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3193 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3193] == bool(mem[_3193])
                        else:
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2914 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2914] == bool(mem[_2914])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3296 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3296] == bool(mem[_3296])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3217 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3217] == bool(mem[_3217])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3394 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3394] == bool(mem[_3394])
                    else:
                        if not address(arg3):
                            mem[_2583 + 64] = address(arg5)
                            mem[_2583 + 96] = address(arg4)
                            mem[_2583 + 128] = arg6
                            mem[_2583 + 160] = arg7
                            mem[_2583 + 192] = address(arg8)
                            mem[_2583 + 224] = 0
                            mem[_2583 + 256] = address(arg9)
                            mem[_2583 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg5)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3081 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3081] == bool(mem[_3081])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3018 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3018] == bool(mem[_3018])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3218 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3218] == bool(mem[_3218])
                        else:
                            mem[_2583 + 64] = address(arg4)
                            mem[_2583 + 96] = address(arg4)
                            mem[_2583 + 128] = arg6
                            mem[_2583 + 160] = arg7
                            mem[_2583 + 192] = address(arg8)
                            mem[_2583 + 224] = 0
                            mem[_2583 + 256] = address(arg9)
                            mem[_2583 + 288] = 0
                            sub_0ec68268.length++
                            mem[0] = 26
                            address(sub_0ec68268[sub_0ec68268.length].field_0) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_256) = address(arg3)
                            address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
                            address(sub_0ec68268[sub_0ec68268.length].field_768) = address(arg4)
                            sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
                            sub_0ec68268[sub_0ec68268.length].field_1280 = arg7
                            address(sub_0ec68268[sub_0ec68268.length].field_1536) = address(arg8)
                            sub_0ec68268[sub_0ec68268.length].field_1792 = 0
                            address(sub_0ec68268[sub_0ec68268.length].field_2048) = address(arg9)
                            sub_0ec68268[sub_0ec68268.length].field_2304 = 0
                            mem[mem[64] + 4] = address(arg3)
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2937 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2937] == bool(mem[_2937])
                            if address(arg4):
                                if arg7 != 1:
                                    if address(arg4):
                                        if not arg7:
                                            mem[mem[64] + 4] = address(arg4)
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(arg2))
                                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg4), -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3310 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3310] == bool(mem[_3310])
                                else:
                                    mem[mem[64] + 4] = address(arg4)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3249 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3249] == bool(mem[_3249])
                                    mem[mem[64] + 4] = address(arg5)
                                    mem[mem[64] + 36] = -1
                                    require ext_code.size(address(arg4))
                                    call address(arg4).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), -1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3403 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3403] == bool(mem[_3403])
}



}
