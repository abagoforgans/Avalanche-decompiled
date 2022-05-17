contract main {




// =====================  Runtime code  =====================


#
#  - emergencyRewardWithdraw(uint256 arg1)
#  - withdraw()
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - emergencyWithdraw()
#  - deposit(uint256 arg1, uint256 arg2)
#
const DEFAULT_ADMIN_ROLE = 0

const MAXIMUM_HARVEST_INTERVAL = (24 * 3600)

const OPERATOR_ROLE = 0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c


address owner;
uint8 stor2;
mapping of struct roleAdmin;
uint8 stor4; offset 160
address sub_b477d80aAddress;
uint256 endBlock;
uint256 startBlock;
uint256 poolLimitPerUser;
uint256 rewardPerBlock;
uint256 sub_a2cbb93b;
uint256 PRECISION_FACTOR;
address rewardTokenAddress;
uint16 sub_a055baf8; offset 160
address stakedTokenAddress;
uint256 harvestInterval;
uint256 sub_405e643c;
mapping of struct userInfo;
address stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function endBlock() payable {
    return endBlock
}

function harvestInterval() payable {
    return harvestInterval
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           bool(userInfo[arg1].field_1024),
           userInfo[arg1].field_1280,
           userInfo[arg1].field_1536,
           userInfo[arg1].field_1792,
           userInfo[arg1].field_2048,
           userInfo[arg1].field_2304,
           userInfo[arg1].field_2560
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_405e643c(?) payable {
    return sub_405e643c
}

function startBlock() payable {
    return startBlock
}

function paused() payable {
    return bool(stor2)
}

function poolLimitPerUser() payable {
    return poolLimitPerUser
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function hasUserLimit() payable {
    return bool(stor4)
}

function sub_a055baf8(?) payable {
    return sub_a055baf8
}

function sub_a2cbb93b(?) payable {
    return sub_a2cbb93b
}

function sub_b477d80a(?) payable {
    return sub_b477d80aAddress
}

function stakedToken() payable {
    return stakedTokenAddress
}

function PRECISION_FACTOR() payable {
    return PRECISION_FACTOR
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function canWithdraw() payable {
    return (block.number > endBlock)
}

function poolInfo() payable {
    return stor17, stor18, stor19, stor20, stor21, stor22, stor23
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endBlock = block.number
}

function canHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.timestamp >= userInfo[address(arg1)].field_512
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
    emit NewRewardPerBlock(arg1);
}

function updateHarvestInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 24 * 3600:
        revert with 0, 'ERR3'
    harvestInterval = arg1
    emit NewHarvestInterval(arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function pendingExperience(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not userInfo[address(arg1)].field_1024:
        return 0
    if block.number <= stor23:
        if userInfo[address(arg1)].field_2560 and stor21 > -1 / userInfo[address(arg1)].field_2560:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if userInfo[address(arg1)].field_2560 * stor21 / PRECISION_FACTOR < userInfo[address(arg1)].field_2048:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_2560 * stor21 / PRECISION_FACTOR) - userInfo[address(arg1)].field_2048)
    if not stor22:
        if userInfo[address(arg1)].field_2560 and stor21 > -1 / userInfo[address(arg1)].field_2560:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if userInfo[address(arg1)].field_2560 * stor21 / PRECISION_FACTOR < userInfo[address(arg1)].field_2048:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_2560 * stor21 / PRECISION_FACTOR) - userInfo[address(arg1)].field_2048)
    if block.number <= endBlock:
        if block.number < stor23:
            revert with 'NH{q', 17
        if block.number - stor23 and sub_a2cbb93b > -1 / block.number - stor23:
            revert with 'NH{q', 17
        if (block.number * sub_a2cbb93b) - (stor23 * sub_a2cbb93b) and PRECISION_FACTOR > -1 / (block.number * sub_a2cbb93b) - (stor23 * sub_a2cbb93b):
            revert with 'NH{q', 17
        if not stor22:
            revert with 'NH{q', 18
        if stor21 > -((block.number * sub_a2cbb93b * PRECISION_FACTOR) - (stor23 * sub_a2cbb93b * PRECISION_FACTOR) / stor22) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_2560 and stor21 + ((block.number * sub_a2cbb93b * PRECISION_FACTOR) - (stor23 * sub_a2cbb93b * PRECISION_FACTOR) / stor22) > -1 / userInfo[address(arg1)].field_2560:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if (stor21 * userInfo[address(arg1)].field_2560) + ((block.number * sub_a2cbb93b * PRECISION_FACTOR) - (stor23 * sub_a2cbb93b * PRECISION_FACTOR) / stor22 * userInfo[address(arg1)].field_2560) / PRECISION_FACTOR < userInfo[address(arg1)].field_2048:
            revert with 'NH{q', 17
        return (((stor21 * userInfo[address(arg1)].field_2560) + ((block.number * sub_a2cbb93b * PRECISION_FACTOR) - (stor23 * sub_a2cbb93b * PRECISION_FACTOR) / stor22 * userInfo[address(arg1)].field_2560) / PRECISION_FACTOR) - userInfo[address(arg1)].field_2048)
    if stor23 >= endBlock:
        if False and sub_a2cbb93b > 0:
            revert with 'NH{q', 17
        if False and PRECISION_FACTOR > 0:
            revert with 'NH{q', 17
        if not stor22:
            revert with 'NH{q', 18
        if stor21 > -(0 / stor22) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_2560 and stor21 + (0 / stor22) > -1 / userInfo[address(arg1)].field_2560:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if (stor21 * userInfo[address(arg1)].field_2560) + (0 / stor22 * userInfo[address(arg1)].field_2560) / PRECISION_FACTOR < userInfo[address(arg1)].field_2048:
            revert with 'NH{q', 17
        return (((stor21 * userInfo[address(arg1)].field_2560) + (0 / stor22 * userInfo[address(arg1)].field_2560) / PRECISION_FACTOR) - userInfo[address(arg1)].field_2048)
    if endBlock < stor23:
        revert with 'NH{q', 17
    if endBlock - stor23 and sub_a2cbb93b > -1 / endBlock - stor23:
        revert with 'NH{q', 17
    if (endBlock * sub_a2cbb93b) - (stor23 * sub_a2cbb93b) and PRECISION_FACTOR > -1 / (endBlock * sub_a2cbb93b) - (stor23 * sub_a2cbb93b):
        revert with 'NH{q', 17
    if not stor22:
        revert with 'NH{q', 18
    if stor21 > -((endBlock * sub_a2cbb93b * PRECISION_FACTOR) - (stor23 * sub_a2cbb93b * PRECISION_FACTOR) / stor22) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_2560 and stor21 + ((endBlock * sub_a2cbb93b * PRECISION_FACTOR) - (stor23 * sub_a2cbb93b * PRECISION_FACTOR) / stor22) > -1 / userInfo[address(arg1)].field_2560:
        revert with 'NH{q', 17
    if not PRECISION_FACTOR:
        revert with 'NH{q', 18
    if (stor21 * userInfo[address(arg1)].field_2560) + ((endBlock * sub_a2cbb93b * PRECISION_FACTOR) - (stor23 * sub_a2cbb93b * PRECISION_FACTOR) / stor22 * userInfo[address(arg1)].field_2560) / PRECISION_FACTOR < userInfo[address(arg1)].field_2048:
        revert with 'NH{q', 17
    return (((stor21 * userInfo[address(arg1)].field_2560) + ((endBlock * sub_a2cbb93b * PRECISION_FACTOR) - (stor23 * sub_a2cbb93b * PRECISION_FACTOR) / stor22 * userInfo[address(arg1)].field_2560) / PRECISION_FACTOR) - userInfo[address(arg1)].field_2048)
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not userInfo[address(arg1)].field_1024:
        if block.number <= stor18:
            if userInfo[address(arg1)].field_0 and stor19 > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not PRECISION_FACTOR:
                revert with 'NH{q', 18
            if userInfo[address(arg1)].field_0 * stor19 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[address(arg1)].field_0 * stor19 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if not ext_call.return_data[0]:
            if userInfo[address(arg1)].field_0 and stor19 > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not PRECISION_FACTOR:
                revert with 'NH{q', 18
            if userInfo[address(arg1)].field_0 * stor19 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return ((userInfo[address(arg1)].field_0 * stor19 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if block.number <= endBlock:
            if block.number < stor18:
                revert with 'NH{q', 17
            if block.number - stor18 and rewardPerBlock > -1 / block.number - stor18:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -stor20 - 1:
                revert with 'NH{q', 17
            if (block.number * rewardPerBlock) - (stor18 * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (stor18 * rewardPerBlock):
                revert with 'NH{q', 17
            if not ext_call.return_data[0] + stor20:
                revert with 'NH{q', 18
            if stor19 > -((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and stor19 + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not PRECISION_FACTOR:
                revert with 'NH{q', 18
            if (stor19 * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((stor19 * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if stor18 >= endBlock:
            if False and rewardPerBlock > 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -stor20 - 1:
                revert with 'NH{q', 17
            if False and PRECISION_FACTOR > 0:
                revert with 'NH{q', 17
            if not ext_call.return_data[0] + stor20:
                revert with 'NH{q', 18
            if stor19 > -(0 / ext_call.return_data[0] + stor20) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and stor19 + (0 / ext_call.return_data[0] + stor20) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not PRECISION_FACTOR:
                revert with 'NH{q', 18
            if (stor19 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((stor19 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if endBlock < stor18:
            revert with 'NH{q', 17
        if endBlock - stor18 and rewardPerBlock > -1 / endBlock - stor18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > -stor20 - 1:
            revert with 'NH{q', 17
        if (endBlock * rewardPerBlock) - (stor18 * rewardPerBlock) and PRECISION_FACTOR > -1 / (endBlock * rewardPerBlock) - (stor18 * rewardPerBlock):
            revert with 'NH{q', 17
        if not ext_call.return_data[0] + stor20:
            revert with 'NH{q', 18
        if stor19 > -((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and stor19 + ((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if (stor19 * userInfo[address(arg1)].field_0) + ((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor19 * userInfo[address(arg1)].field_0) + ((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if userInfo[address(arg1)].field_0 > -userInfo[address(arg1)].field_1536 - 1:
        revert with 'NH{q', 17
    if block.number <= stor18:
        if userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536 and stor19 > -1 / userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if (userInfo[address(arg1)].field_0 * stor19) + (userInfo[address(arg1)].field_1536 * stor19) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((userInfo[address(arg1)].field_0 * stor19) + (userInfo[address(arg1)].field_1536 * stor19) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536 and stor19 > -1 / userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if (userInfo[address(arg1)].field_0 * stor19) + (userInfo[address(arg1)].field_1536 * stor19) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((userInfo[address(arg1)].field_0 * stor19) + (userInfo[address(arg1)].field_1536 * stor19) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if block.number <= endBlock:
        if block.number < stor18:
            revert with 'NH{q', 17
        if block.number - stor18 and rewardPerBlock > -1 / block.number - stor18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > -stor20 - 1:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (stor18 * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (stor18 * rewardPerBlock):
            revert with 'NH{q', 17
        if not ext_call.return_data[0] + stor20:
            revert with 'NH{q', 18
        if stor19 > -((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536 and stor19 + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20) > -1 / userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if (stor19 * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) + (stor19 * userInfo[address(arg1)].field_1536) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_1536) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor19 * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) + (stor19 * userInfo[address(arg1)].field_1536) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_1536) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if stor18 >= endBlock:
        if False and rewardPerBlock > 0:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > -stor20 - 1:
            revert with 'NH{q', 17
        if False and PRECISION_FACTOR > 0:
            revert with 'NH{q', 17
        if not ext_call.return_data[0] + stor20:
            revert with 'NH{q', 18
        if stor19 > -(0 / ext_call.return_data[0] + stor20) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536 and stor19 + (0 / ext_call.return_data[0] + stor20) > -1 / userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536:
            revert with 'NH{q', 17
        if not PRECISION_FACTOR:
            revert with 'NH{q', 18
        if (stor19 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) + (stor19 * userInfo[address(arg1)].field_1536) + (0 / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_1536) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor19 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) + (stor19 * userInfo[address(arg1)].field_1536) + (0 / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_1536) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if endBlock < stor18:
        revert with 'NH{q', 17
    if endBlock - stor18 and rewardPerBlock > -1 / endBlock - stor18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > -stor20 - 1:
        revert with 'NH{q', 17
    if (endBlock * rewardPerBlock) - (stor18 * rewardPerBlock) and PRECISION_FACTOR > -1 / (endBlock * rewardPerBlock) - (stor18 * rewardPerBlock):
        revert with 'NH{q', 17
    if not ext_call.return_data[0] + stor20:
        revert with 'NH{q', 18
    if stor19 > -((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536 and stor19 + ((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20) > -1 / userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_1536:
        revert with 'NH{q', 17
    if not PRECISION_FACTOR:
        revert with 'NH{q', 18
    if (stor19 * userInfo[address(arg1)].field_0) + ((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) + (stor19 * userInfo[address(arg1)].field_1536) + ((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_1536) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((stor19 * userInfo[address(arg1)].field_0) + ((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_0) + (stor19 * userInfo[address(arg1)].field_1536) + ((endBlock * rewardPerBlock * PRECISION_FACTOR) - (stor18 * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] + stor20 * userInfo[address(arg1)].field_1536) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
}



}
