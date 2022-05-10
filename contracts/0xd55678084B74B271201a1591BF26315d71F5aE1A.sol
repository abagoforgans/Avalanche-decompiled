contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - withdrawToken(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#  - withdrawFine()
#
const precision = 100 * 10^18

const ADMIN_ROLE = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint256 stor1;
mapping of struct stakers;
address depositTokenAddress;
address rewardTokenAddress;
uint256 rewardsPerEpoch;
uint256 startTime;
uint256 epochDuration;
uint256 rewardsPerDeposit;
uint256 rewardProduced;
uint256 produceTime;
uint256 pastProduced;
uint256 totalStaked;
uint256 totalDistributed;
uint256 finePercent;
uint256 fineCoolDownTime;
uint256 accumulatedFine;
uint8 isStakeAvailable;
uint8 isUnstakeAvailable; offset 8
uint8 isClaimAvailable; offset 16
uint256 stor17; offset 16
uint256 stor17; offset 8

function isStakeAvailable() payable {
    return bool(isStakeAvailable)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function accumulatedFine() payable {
    return accumulatedFine
}

function rewardsPerEpoch() payable {
    return rewardsPerEpoch
}

function pastProduced() payable {
    return pastProduced
}

function isClaimAvailable() payable {
    return bool(isClaimAvailable)
}

function produceTime() payable {
    return produceTime
}

function epochDuration() payable {
    return epochDuration
}

function finePercent() payable {
    return finePercent
}

function isUnstakeAvailable() payable {
    return bool(isUnstakeAvailable)
}

function startTime() payable {
    return startTime
}

function totalStaked() payable {
    return totalStaked
}

function stakers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakers[arg1].field_0, 
           stakers[arg1].field_256,
           stakers[arg1].field_512,
           stakers[arg1].field_768,
           stakers[arg1].field_1024,
           stakers[arg1].field_1280
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function fineCoolDownTime() payable {
    return fineCoolDownTime
}

function depositToken() payable {
    return depositTokenAddress
}

function rewardProduced() payable {
    return rewardProduced
}

function rewardsPerDeposit() payable {
    return rewardsPerDeposit
}

function totalDistributed() payable {
    return totalDistributed
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getCommonStakingInfo() payable {
    return rewardsPerEpoch, 
           startTime,
           epochDuration,
           rewardsPerDeposit,
           rewardProduced,
           produceTime,
           pastProduced,
           totalStaked,
           totalDistributed,
           fineCoolDownTime,
           finePercent,
           accumulatedFine,
           depositTokenAddress,
           rewardTokenAddress
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

function requestUnstakeWithoutFine(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not isUnstakeAvailable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farming: unstake is not available now'
    if stakers[address(msg.sender)].field_0 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farming: not enough tokens to unstake'
    if stakers[address(msg.sender)].field_1280 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Farming: you already have request with greater or equal amount'
    if block.timestamp > -fineCoolDownTime - 1:
        revert with 'NH{q', 17
    stakers[address(msg.sender)].field_1024 = block.timestamp + fineCoolDownTime
    stakers[address(msg.sender)].field_1280 = arg1
    emit 0x60c059de: arg1, stakers[address(msg.sender)].field_1024, block.timestamp, msg.sender
}

function update() payable {
    if block.timestamp < produceTime:
        revert with 'NH{q', 17
    if rewardsPerEpoch and block.timestamp - produceTime > -1 / rewardsPerEpoch:
        revert with 'NH{q', 17
    if not epochDuration:
        revert with 'NH{q', 18
    if pastProduced > -((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - 1:
        revert with 'NH{q', 17
    if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) > rewardProduced:
        if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) < rewardProduced:
            revert with 'NH{q', 17
        if totalStaked > 0:
            if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - rewardProduced and 100 * 10^18 > -1 / pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - rewardProduced:
                revert with 'NH{q', 17
            if not totalStaked:
                revert with 'NH{q', 18
            if rewardsPerDeposit > -((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked) - 1:
                revert with 'NH{q', 17
            rewardsPerDeposit += (100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked
        if rewardProduced > -pastProduced + -((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) + rewardProduced - 1:
            revert with 'NH{q', 17
        rewardProduced = pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration)
}

function updateStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        startTime = arg1
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function updateFinePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        finePercent = arg1
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function updateDepositToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        depositTokenAddress = arg1
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function changeParamFineCoolDownTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        fineCoolDownTime = arg1
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function setAvailability(bool arg1, bool arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        if bool(isStakeAvailable) != arg1:
            isStakeAvailable = uint8(arg1)
        if bool(isUnstakeAvailable) != arg2:
            Mask(248, 0, stor17.field_8) = Mask(248, 0, arg2)
        if bool(isClaimAvailable) != arg3:
            Mask(240, 0, stor17.field_16) = Mask(240, 0, arg3)
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function setReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        if block.timestamp < produceTime:
            revert with 'NH{q', 17
        if rewardsPerEpoch and block.timestamp - produceTime > -1 / rewardsPerEpoch:
            revert with 'NH{q', 17
        if not epochDuration:
            revert with 'NH{q', 18
        if pastProduced > -((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - 1:
            revert with 'NH{q', 17
        pastProduced += (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration
        produceTime = block.timestamp
        rewardsPerEpoch = arg1
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function getRewardInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalStaked <= 0:
        if stakers[address(arg1)].field_0 and rewardsPerDeposit > -1 / stakers[address(arg1)].field_0:
            revert with 'NH{q', 17
        if stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18 > -stakers[address(arg1)].field_256 - 1:
            revert with 'NH{q', 17
        if (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 < stakers[address(arg1)].field_768:
            revert with 'NH{q', 17
        if (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 < stakers[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 - stakers[address(arg1)].field_512)
    if block.timestamp < produceTime:
        revert with 'NH{q', 17
    if rewardsPerEpoch and block.timestamp - produceTime > -1 / rewardsPerEpoch:
        revert with 'NH{q', 17
    if not epochDuration:
        revert with 'NH{q', 18
    if pastProduced > -((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - 1:
        revert with 'NH{q', 17
    if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) <= rewardProduced:
        if stakers[address(arg1)].field_0 and rewardsPerDeposit > -1 / stakers[address(arg1)].field_0:
            revert with 'NH{q', 17
        if stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18 > -stakers[address(arg1)].field_256 - 1:
            revert with 'NH{q', 17
        if (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 < stakers[address(arg1)].field_768:
            revert with 'NH{q', 17
        if (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 < stakers[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 - stakers[address(arg1)].field_512)
    if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) < rewardProduced:
        revert with 'NH{q', 17
    if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - rewardProduced and 100 * 10^18 > -1 / pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - rewardProduced:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if rewardsPerDeposit > -((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked) - 1:
        revert with 'NH{q', 17
    if stakers[address(arg1)].field_0 and rewardsPerDeposit + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked) > -1 / stakers[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (rewardsPerDeposit * stakers[address(arg1)].field_0) + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked * stakers[address(arg1)].field_0) / 100 * 10^18 > -stakers[address(arg1)].field_256 - 1:
        revert with 'NH{q', 17
    if ((rewardsPerDeposit * stakers[address(arg1)].field_0) + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked * stakers[address(arg1)].field_0) / 100 * 10^18) + stakers[address(arg1)].field_256 < stakers[address(arg1)].field_768:
        revert with 'NH{q', 17
    if ((rewardsPerDeposit * stakers[address(arg1)].field_0) + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked * stakers[address(arg1)].field_0) / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 < stakers[address(arg1)].field_512:
        revert with 'NH{q', 17
    return (((rewardsPerDeposit * stakers[address(arg1)].field_0) + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked * stakers[address(arg1)].field_0) / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 - stakers[address(arg1)].field_512)
}

function getUserInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalStaked <= 0:
        if stakers[address(arg1)].field_0 and rewardsPerDeposit > -1 / stakers[address(arg1)].field_0:
            revert with 'NH{q', 17
        if stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18 > -stakers[address(arg1)].field_256 - 1:
            revert with 'NH{q', 17
        if (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 < stakers[address(arg1)].field_768:
            revert with 'NH{q', 17
        if (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 < stakers[address(arg1)].field_512:
            revert with 'NH{q', 17
        return stakers[address(arg1)].field_0, 
               (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 - stakers[address(arg1)].field_512,
               stakers[address(arg1)].field_512,
               stakers[address(arg1)].field_768,
               stakers[address(arg1)].field_1024,
               stakers[address(arg1)].field_1280
    if block.timestamp < produceTime:
        revert with 'NH{q', 17
    if rewardsPerEpoch and block.timestamp - produceTime > -1 / rewardsPerEpoch:
        revert with 'NH{q', 17
    if not epochDuration:
        revert with 'NH{q', 18
    if pastProduced > -((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - 1:
        revert with 'NH{q', 17
    if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) <= rewardProduced:
        if stakers[address(arg1)].field_0 and rewardsPerDeposit > -1 / stakers[address(arg1)].field_0:
            revert with 'NH{q', 17
        if stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18 > -stakers[address(arg1)].field_256 - 1:
            revert with 'NH{q', 17
        if (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 < stakers[address(arg1)].field_768:
            revert with 'NH{q', 17
        if (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 < stakers[address(arg1)].field_512:
            revert with 'NH{q', 17
        return stakers[address(arg1)].field_0, 
               (stakers[address(arg1)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 - stakers[address(arg1)].field_512,
               stakers[address(arg1)].field_512,
               stakers[address(arg1)].field_768,
               stakers[address(arg1)].field_1024,
               stakers[address(arg1)].field_1280
    if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) < rewardProduced:
        revert with 'NH{q', 17
    if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - rewardProduced and 100 * 10^18 > -1 / pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - rewardProduced:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if rewardsPerDeposit > -((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked) - 1:
        revert with 'NH{q', 17
    if stakers[address(arg1)].field_0 and rewardsPerDeposit + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked) > -1 / stakers[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (rewardsPerDeposit * stakers[address(arg1)].field_0) + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked * stakers[address(arg1)].field_0) / 100 * 10^18 > -stakers[address(arg1)].field_256 - 1:
        revert with 'NH{q', 17
    if ((rewardsPerDeposit * stakers[address(arg1)].field_0) + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked * stakers[address(arg1)].field_0) / 100 * 10^18) + stakers[address(arg1)].field_256 < stakers[address(arg1)].field_768:
        revert with 'NH{q', 17
    if ((rewardsPerDeposit * stakers[address(arg1)].field_0) + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked * stakers[address(arg1)].field_0) / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 < stakers[address(arg1)].field_512:
        revert with 'NH{q', 17
    return stakers[address(arg1)].field_0, 
           ((rewardsPerDeposit * stakers[address(arg1)].field_0) + ((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked * stakers[address(arg1)].field_0) / 100 * 10^18) + stakers[address(arg1)].field_256 - stakers[address(arg1)].field_768 - stakers[address(arg1)].field_512,
           stakers[address(arg1)].field_512,
           stakers[address(arg1)].field_768,
           stakers[address(arg1)].field_1024,
           stakers[address(arg1)].field_1280
}

function claim() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not isClaimAvailable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farming: claim is not available now'
    if totalStaked > 0:
        if block.timestamp < produceTime:
            revert with 'NH{q', 17
        if rewardsPerEpoch and block.timestamp - produceTime > -1 / rewardsPerEpoch:
            revert with 'NH{q', 17
        if not epochDuration:
            revert with 'NH{q', 18
        if pastProduced > -((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - 1:
            revert with 'NH{q', 17
        if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) > rewardProduced:
            if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) < rewardProduced:
                revert with 'NH{q', 17
            if totalStaked > 0:
                if pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - rewardProduced and 100 * 10^18 > -1 / pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - rewardProduced:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if rewardsPerDeposit > -((100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked) - 1:
                    revert with 'NH{q', 17
                rewardsPerDeposit += (100 * 10^18 * pastProduced) + (100 * 10^18 * (block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) - (100 * 10^18 * rewardProduced) / totalStaked
            if rewardProduced > -pastProduced + -((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration) + rewardProduced - 1:
                revert with 'NH{q', 17
            rewardProduced = pastProduced + ((block.timestamp * rewardsPerEpoch) - (produceTime * rewardsPerEpoch) / epochDuration)
    mem[128] = stakers[address(msg.sender)].field_256
    mem[160] = stakers[address(msg.sender)].field_512
    mem[192] = stakers[address(msg.sender)].field_768
    mem[224] = stakers[address(msg.sender)].field_1024
    mem[256] = stakers[address(msg.sender)].field_1280
    if stakers[address(msg.sender)].field_0 and rewardsPerDeposit > -1 / stakers[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18 > -stakers[address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    if (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 < stakers[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    if (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_768 < stakers[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_768 - stakers[address(msg.sender)].field_512 <= 0:
        revert with 0, 'Farming: nothing to claim'
    if stakers[address(msg.sender)].field_768 > -(stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + -stakers[address(msg.sender)].field_256 + stakers[address(msg.sender)].field_768 + stakers[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    stakers[address(msg.sender)].field_768 = (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_512
    if totalDistributed > -(stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + -stakers[address(msg.sender)].field_256 + stakers[address(msg.sender)].field_768 + stakers[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    totalDistributed = totalDistributed + (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_768 - stakers[address(msg.sender)].field_512
    mem[324] = msg.sender
    mem[356] = (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_768 - stakers[address(msg.sender)].field_512
    mem[288] = 68
    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[320 len 4] = unknown_0xa9059cbb(?????)
    mem[388] = 32
    mem[420] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(rewardTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[452 len 96] = unknown_0xa9059cbb(?????), msg.sender, (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_768 - stakers[address(msg.sender)].field_512, 0
    mem[520] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_768 - stakers[address(msg.sender)].field_512, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_768 - stakers[address(msg.sender)].field_512, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if stakers[address(msg.sender)].field_0 > 0:
                revert with memory
                  from 128
                   len stakers[address(msg.sender)].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if stakers[address(msg.sender)].field_0 > 0:
            require stakers[address(msg.sender)].field_0 >= 32
            require stakers[address(msg.sender)].field_256 == bool(stakers[address(msg.sender)].field_256)
            if not stakers[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[484] == bool(mem[484])
            if not mem[484]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x74d693d1: (stakers[address(msg.sender)].field_0 * rewardsPerDeposit / 100 * 10^18) + stakers[address(msg.sender)].field_256 - stakers[address(msg.sender)].field_768 - stakers[address(msg.sender)].field_512, block.timestamp, msg.sender
    stor1 = 1
}



}
