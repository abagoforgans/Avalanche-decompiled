contract main {




// =====================  Runtime code  =====================


#
#  - sub_077e2e37(?)
#  - sub_10375c97(?)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_47842a44(?)
#  - emergencyWithdraw(uint256 arg1)
#  - sub_6b966b9f(?)
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
           sub_0ec68268[arg1].field_768,
           sub_0ec68268[arg1].field_1024,
           address(sub_0ec68268[arg1].field_1280),
           sub_0ec68268[arg1].field_1536,
           address(sub_0ec68268[arg1].field_1792),
           sub_0ec68268[arg1].field_2048
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

function sub_b84c7e37(?) payable {
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

function sub_9e3593b3(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg1 >= sub_0ec68268.length:
        revert with 0, 50
    if address(sub_0ec68268[arg1].field_0):
        require ext_code.size(address(poolInfo[arg1].field_0))
        call address(poolInfo[arg1].field_0).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(sub_0ec68268[arg1].field_0), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(sub_0ec68268[arg1].field_512):
        require ext_code.size(address(poolInfo[arg1].field_0))
        call address(poolInfo[arg1].field_0).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(sub_0ec68268[arg1].field_512), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    require ext_code.size(address(sub_0ec68268[arg1].field_1280))
    staticcall address(sub_0ec68268[arg1].field_1280).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(sub_0ec68268[arg1].field_1792):
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        if address(sub_0ec68268[arg1].field_0):
            if not sub_0ec68268[arg1].field_1024:
                require ext_code.size(address(sub_0ec68268[arg1].field_0))
                call address(sub_0ec68268[arg1].field_0).harvest(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_0ec68268[arg1].field_768, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 1 == sub_0ec68268[arg1].field_1024:
                    require ext_code.size(address(sub_0ec68268[arg1].field_256))
                    call address(sub_0ec68268[arg1].field_256).getReward() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if address(sub_0ec68268[arg1].field_512):
            require ext_code.size(address(sub_0ec68268[arg1].field_512))
            call address(sub_0ec68268[arg1].field_512).0xe2bbb158 with:
                 gas gas_remaining wei
                args sub_0ec68268[arg1].field_768, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        require ext_code.size(address(sub_0ec68268[arg1].field_1280))
        staticcall address(sub_0ec68268[arg1].field_1280).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if sub_0ec68268[arg1].field_1536 > !0:
                revert with 0, 17
        else:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if sub_0ec68268[arg1].field_1536 < 0:
                revert with 0, 17
        if address(sub_0ec68268[arg1].field_1792):
            require ext_code.size(address(sub_0ec68268[arg1].field_1792))
            staticcall address(sub_0ec68268[arg1].field_1792).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0:
                if sub_0ec68268[arg1].field_2048 > !ext_call.return_data[0]:
                    revert with 0, 17
            else:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 17
                if sub_0ec68268[arg1].field_2048 < -ext_call.return_data[0]:
                    revert with 0, 17
            sub_0ec68268[arg1].field_2048 += ext_call.return_data[0]
    else:
        require ext_code.size(address(sub_0ec68268[arg1].field_1792))
        staticcall address(sub_0ec68268[arg1].field_1792).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        if address(sub_0ec68268[arg1].field_0):
            if not sub_0ec68268[arg1].field_1024:
                require ext_code.size(address(sub_0ec68268[arg1].field_0))
                call address(sub_0ec68268[arg1].field_0).harvest(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_0ec68268[arg1].field_768, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 1 == sub_0ec68268[arg1].field_1024:
                    require ext_code.size(address(sub_0ec68268[arg1].field_256))
                    call address(sub_0ec68268[arg1].field_256).getReward() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if address(sub_0ec68268[arg1].field_512):
            require ext_code.size(address(sub_0ec68268[arg1].field_512))
            call address(sub_0ec68268[arg1].field_512).0xe2bbb158 with:
                 gas gas_remaining wei
                args sub_0ec68268[arg1].field_768, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= sub_0ec68268.length:
            revert with 0, 50
        require ext_code.size(address(sub_0ec68268[arg1].field_1280))
        staticcall address(sub_0ec68268[arg1].field_1280).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if sub_0ec68268[arg1].field_1536 > !0:
                revert with 0, 17
        else:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if sub_0ec68268[arg1].field_1536 < 0:
                revert with 0, 17
        if address(sub_0ec68268[arg1].field_1792):
            require ext_code.size(address(sub_0ec68268[arg1].field_1792))
            staticcall address(sub_0ec68268[arg1].field_1792).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if sub_0ec68268[arg1].field_2048 > !0:
                    revert with 0, 17
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if sub_0ec68268[arg1].field_2048 < 0:
                    revert with 0, 17
}

function sub_48b83766(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_0ec68268.length:
        revert with 0, 50
    mem[0] = 24
    if not address(sub_0ec68268[arg1].field_0):
        if not address(sub_0ec68268[arg1].field_512):
            return 0, 0, 128, 0, 0
        mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[100] = sub_0ec68268[arg1].field_768
        mem[132] = this.address
        require ext_code.size(address(sub_0ec68268[arg1].field_512))
        staticcall address(sub_0ec68268[arg1].field_512).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_0ec68268[arg1].field_768, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _14 = mem[96 len 4], Mask(224, 0, sub_0ec68268[arg1].field_800)
        require uint32(sub_0ec68268[arg1].field_768), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
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
    if not sub_0ec68268[arg1].field_1024:
        require ext_code.size(address(sub_0ec68268[arg1].field_0))
        staticcall address(sub_0ec68268[arg1].field_0).0x98969e82 with:
                gas gas_remaining wei
               args sub_0ec68268[arg1].field_768, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], 0, 128, 0, 0
    if 1 == sub_0ec68268[arg1].field_1024:
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
    mem[100] = sub_0ec68268[arg1].field_768
    mem[132] = this.address
    require ext_code.size(address(sub_0ec68268[arg1].field_512))
    staticcall address(sub_0ec68268[arg1].field_512).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_0ec68268[arg1].field_768, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _21 = mem[96 len 4], Mask(224, 0, sub_0ec68268[arg1].field_800)
    require uint32(sub_0ec68268[arg1].field_768), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
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
        staticcall sub_13bb3c33Address.cap() with:
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
        staticcall sub_13bb3c33Address.cap() with:
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
    staticcall sub_13bb3c33Address.cap() with:
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
    mem[0] = 23
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
                staticcall sub_13bb3c33Address.cap() with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                    staticcall sub_13bb3c33Address.cap() with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                    staticcall sub_13bb3c33Address.cap() with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        staticcall sub_13bb3c33Address.cap() with:
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                    _446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _447 = mem[_446]
                    require ext_code.size(sub_13bb3c33Address)
                    staticcall sub_13bb3c33Address.cap() with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[0] = 23
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
                staticcall sub_13bb3c33Address.cap() with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                    staticcall sub_13bb3c33Address.cap() with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                call sub_13bb3c33Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                call sub_13bb3c33Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
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
                        _240 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _242 = mem[_240]
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.cap() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _250 = mem[_248]
                        if mem[_248] < _242:
                            revert with 0, 17
                        if mem[_248] - _242 < 0 / totalAllocPoint:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _250 - _242
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), _250 - _242
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _250 - _242 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1280:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _250) - (10^12 * _242) / poolInfo[idx].field_1280):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _250) - (10^12 * _242) / poolInfo[idx].field_1280
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            _465 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _467 = mem[_465]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.cap() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _471 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _472 = mem[_471]
                            if mem[_471] < _467:
                                revert with 0, 17
                            if mem[_471] - _467 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _472 - _467
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _472 - _467
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _472 - _467 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _472) - (10^12 * _467) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _472) - (10^12 * _467) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                        _457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _458 = mem[_457]
                        require ext_code.size(sub_13bb3c33Address)
                        staticcall sub_13bb3c33Address.cap() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _462 = mem[_461]
                        if mem[_461] < _458:
                            revert with 0, 17
                        if mem[_461] - _458 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _462 - _458
                            require ext_code.size(sub_13bb3c33Address)
                            call sub_13bb3c33Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), _462 - _458
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _462 - _458 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1280:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * _462) - (10^12 * _458) / poolInfo[idx].field_1280):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * _462) - (10^12 * _458) / poolInfo[idx].field_1280
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
    address(poolInfo[arg1].field_0) = arg2
}

function sub_0e82ebab(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == bool(arg8)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        if arg8:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 23
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
                            _503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _507 = mem[_503]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.cap() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _523 = mem[_519]
                            if mem[_519] < _507:
                                revert with 0, 17
                            if mem[_519] - _507 < 0 / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _523 - _507
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _523 - _507
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _523 - _507 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _523) - (10^12 * _507) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _523) - (10^12 * _507) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                _953 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _957 = mem[_953]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _965 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _967 = mem[_965]
                                if mem[_965] < _957:
                                    revert with 0, 17
                                if mem[_965] - _957 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _967 - _957
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _967 - _957
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _967 - _957 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _967) - (10^12 * _957) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _967) - (10^12 * _957) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            _937 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _939 = mem[_937]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.cap() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _945 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _947 = mem[_945]
                            if mem[_945] < _939:
                                revert with 0, 17
                            if mem[_945] - _939 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _947 - _939
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _947 - _939
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _947 - _939 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _947) - (10^12 * _939) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _947) - (10^12 * _939) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
        if arg8:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 23
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
                            _504 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _508 = mem[_504]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.cap() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _520 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _524 = mem[_520]
                            if mem[_520] < _508:
                                revert with 0, 17
                            if mem[_520] - _508 < 0 / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _524 - _508
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _524 - _508
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _524 - _508 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _524) - (10^12 * _508) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _524) - (10^12 * _508) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                _954 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _958 = mem[_954]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _966 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _968 = mem[_966]
                                if mem[_966] < _958:
                                    revert with 0, 17
                                if mem[_966] - _958 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _968 - _958
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _968 - _958
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _968 - _958 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _968) - (10^12 * _958) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _968) - (10^12 * _958) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                            _938 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _940 = mem[_938]
                            require ext_code.size(sub_13bb3c33Address)
                            staticcall sub_13bb3c33Address.cap() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _946 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _948 = mem[_946]
                            if mem[_946] < _940:
                                revert with 0, 17
                            if mem[_946] - _940 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = _948 - _940
                                require ext_code.size(sub_13bb3c33Address)
                                call sub_13bb3c33Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), _948 - _940
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _948 - _940 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * _948) - (10^12 * _940) / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * _948) - (10^12 * _940) / poolInfo[idx].field_1280
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
    address(sub_0ec68268[arg1].field_512) = address(arg3)
    sub_0ec68268[arg1].field_768 = arg4
    sub_0ec68268[arg1].field_1024 = arg5
    address(sub_0ec68268[arg1].field_1280) = address(arg6)
    address(sub_0ec68268[arg1].field_1792) = address(arg7)
}

function sub_a0966246(?) payable {
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
    mem[0] = address(arg2)
    mem[32] = 25
    if poolId1[address(arg2)]:
        revert with 0, 'lp is in pool'
    if not arg6:
        if not address(arg3):
            if arg9:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 23
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
                                _1428 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1436 = mem[_1428]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1460 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1468 = mem[_1460]
                                if mem[_1460] < _1436:
                                    revert with 0, 17
                                if mem[_1460] - _1436 < 0 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _1468 - _1436
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _1468 - _1436
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _1468 - _1436 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _1468) - (10^12 * _1436) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _1468) - (10^12 * _1436) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    _2328 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2336 = mem[_2328]
                                    require ext_code.size(sub_13bb3c33Address)
                                    staticcall sub_13bb3c33Address.cap() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2352 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2356 = mem[_2352]
                                    if mem[_2352] < _2336:
                                        revert with 0, 17
                                    if mem[_2352] - _2336 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = _2356 - _2336
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), _2356 - _2336
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if _2356 - _2336 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !((10^12 * _2356) - (10^12 * _2336) / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += (10^12 * _2356) - (10^12 * _2336) / poolInfo[idx].field_1280
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                _2296 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2300 = mem[_2296]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2312 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2316 = mem[_2312]
                                if mem[_2312] < _2300:
                                    revert with 0, 17
                                if mem[_2312] - _2300 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _2316 - _2300
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _2316 - _2300
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _2316 - _2300 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _2316) - (10^12 * _2300) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _2316) - (10^12 * _2300) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if address(arg4):
                revert with 0, 'Both add != 0'
            if arg9:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 23
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
                                _1429 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1437 = mem[_1429]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1461 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1469 = mem[_1461]
                                if mem[_1461] < _1437:
                                    revert with 0, 17
                                if mem[_1461] - _1437 < 0 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _1469 - _1437
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _1469 - _1437
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _1469 - _1437 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _1469) - (10^12 * _1437) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _1469) - (10^12 * _1437) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    _2329 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2337 = mem[_2329]
                                    require ext_code.size(sub_13bb3c33Address)
                                    staticcall sub_13bb3c33Address.cap() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2353 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2357 = mem[_2353]
                                    if mem[_2353] < _2337:
                                        revert with 0, 17
                                    if mem[_2353] - _2337 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = _2357 - _2337
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), _2357 - _2337
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if _2357 - _2337 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !((10^12 * _2357) - (10^12 * _2337) / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += (10^12 * _2357) - (10^12 * _2337) / poolInfo[idx].field_1280
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                _2297 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2301 = mem[_2297]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2313 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2317 = mem[_2313]
                                if mem[_2313] < _2301:
                                    revert with 0, 17
                                if mem[_2313] - _2301 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _2317 - _2301
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _2317 - _2301
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _2317 - _2301 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _2317) - (10^12 * _2301) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _2317) - (10^12 * _2301) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        if arg6 != 1:
            revert with 0, 'no != 0/1'
        if not address(arg3):
            if arg9:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 23
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
                                _1430 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1438 = mem[_1430]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1462 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1470 = mem[_1462]
                                if mem[_1462] < _1438:
                                    revert with 0, 17
                                if mem[_1462] - _1438 < 0 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _1470 - _1438
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _1470 - _1438
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _1470 - _1438 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _1470) - (10^12 * _1438) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _1470) - (10^12 * _1438) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    _2330 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2338 = mem[_2330]
                                    require ext_code.size(sub_13bb3c33Address)
                                    staticcall sub_13bb3c33Address.cap() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2354 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2358 = mem[_2354]
                                    if mem[_2354] < _2338:
                                        revert with 0, 17
                                    if mem[_2354] - _2338 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = _2358 - _2338
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), _2358 - _2338
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if _2358 - _2338 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !((10^12 * _2358) - (10^12 * _2338) / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += (10^12 * _2358) - (10^12 * _2338) / poolInfo[idx].field_1280
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                _2298 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2302 = mem[_2298]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2318 = mem[_2314]
                                if mem[_2314] < _2302:
                                    revert with 0, 17
                                if mem[_2314] - _2302 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _2318 - _2302
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _2318 - _2302
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _2318 - _2302 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _2318) - (10^12 * _2302) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _2318) - (10^12 * _2302) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args founderaddr, 95 * t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint * PERCENT_FOR_FOUNDERS / 100000 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if address(arg4):
                revert with 0, 'Both add != 0'
            if arg9:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 23
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
                                _1431 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1439 = mem[_1431]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1463 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1471 = mem[_1463]
                                if mem[_1463] < _1439:
                                    revert with 0, 17
                                if mem[_1463] - _1439 < 0 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _1471 - _1439
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _1471 - _1439
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _1471 - _1439 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _1471) - (10^12 * _1439) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _1471) - (10^12 * _1439) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                    _2331 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2339 = mem[_2331]
                                    require ext_code.size(sub_13bb3c33Address)
                                    staticcall sub_13bb3c33Address.cap() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2355 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2359 = mem[_2355]
                                    if mem[_2355] < _2339:
                                        revert with 0, 17
                                    if mem[_2355] - _2339 < (t * REWARD_PER_BLOCK * poolInfo[idx].field_256) + (block.number * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) - (u * rEWARD_MULTIPLIER[s] * REWARD_PER_BLOCK * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = _2359 - _2339
                                        require ext_code.size(sub_13bb3c33Address)
                                        call sub_13bb3c33Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), _2359 - _2339
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if _2359 - _2339 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !((10^12 * _2359) - (10^12 * _2339) / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        poolInfo[idx].field_768 += (10^12 * _2359) - (10^12 * _2339) / poolInfo[idx].field_1280
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                _2299 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2303 = mem[_2299]
                                require ext_code.size(sub_13bb3c33Address)
                                staticcall sub_13bb3c33Address.cap() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2315 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2319 = mem[_2315]
                                if mem[_2315] < _2303:
                                    revert with 0, 17
                                if mem[_2315] - _2303 < t * REWARD_PER_BLOCK * poolInfo[idx].field_256 / totalAllocPoint:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = _2319 - _2303
                                    require ext_code.size(sub_13bb3c33Address)
                                    call sub_13bb3c33Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), _2319 - _2303
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _2319 - _2303 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !((10^12 * _2319) - (10^12 * _2303) / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += (10^12 * _2319) - (10^12 * _2303) / poolInfo[idx].field_1280
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
                                        call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
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
    address(sub_0ec68268[sub_0ec68268.length].field_512) = address(arg4)
    sub_0ec68268[sub_0ec68268.length].field_768 = arg5
    sub_0ec68268[sub_0ec68268.length].field_1024 = arg6
    address(sub_0ec68268[sub_0ec68268.length].field_1280) = address(arg7)
    sub_0ec68268[sub_0ec68268.length].field_1536 = 0
    address(sub_0ec68268[sub_0ec68268.length].field_1792) = address(arg8)
    sub_0ec68268[sub_0ec68268.length].field_2048 = 0
}



}
