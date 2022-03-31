contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - stake(uint256 arg1)
#
address owner;
address xPEFIAddress;
uint256 stakingDuration;
uint256 totalStaked;
uint256 depositEnd;
uint256 allocationWeight;
uint256 totalAllocations;
array of uint256 tierHurdles;
array of uint256 stor8;
uint256 stor9;
array of uint256 allocationBonusBIPS;
mapping of uint256 amountStaked;
mapping of uint256 timeStaked;
mapping of uint256 allocations;
mapping of uint8 stor16;

function allocations(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allocations[arg1]
}

function tierHurdles(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return tierHurdles[arg1]
}

function totalAllocations() payable {
    return totalAllocations
}

function timeStaked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return timeStaked[arg1]
}

function stakingDuration() payable {
    return stakingDuration
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function depositEnd() payable {
    return depositEnd
}

function xPEFI() payable {
    return xPEFIAddress
}

function allocationWeight() payable {
    return allocationWeight
}

function allocationBonusBIPS(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return allocationBonusBIPS[arg1]
}

function amountStaked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountStaked[arg1]
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

function adjustDepositEnd(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    depositEnd = arg1
}

function reduceStakingDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stakingDuration:
        revert with 0, 'can only reduce staking duration'
    stakingDuration = arg1
}

function timeToUnstake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not timeStaked[address(arg1)]:
        return 0
    if timeStaked[address(arg1)] > !stakingDuration:
        revert with 0, 17
    return (timeStaked[address(arg1)] + stakingDuration)
}

function canUnstake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not timeStaked[address(arg1)]:
        if block.timestamp < 0:
            return 0
    else:
        if timeStaked[address(arg1)] > !stakingDuration:
            revert with 0, 17
        if block.timestamp < timeStaked[address(arg1)] + stakingDuration:
            return 0
    return 1
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

function amountNeededForNextTier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if amountStaked[address(arg1)] < tierHurdles.length:
        if tierHurdles.length < amountStaked[address(arg1)]:
            revert with 0, 17
        return (tierHurdles.length - amountStaked[address(arg1)])
    if amountStaked[address(arg1)] > stor9:
        return 0
    if stor16[address(arg1)] > 2:
        revert with 0, 33
    if 1 > !stor16[address(arg1)]:
        revert with 0, 17
    if stor16[address(arg1)] + 1 >= 3:
        revert with 0, 50
    if stor8[stor16[address(arg1)]] < amountStaked[address(arg1)]:
        revert with 0, 17
    return (stor8[stor16[address(arg1)]] - amountStaked[address(arg1)])
}

function timeRemainingToUnstake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not timeStaked[address(arg1)]:
        return 0
    if not timeStaked[address(arg1)]:
        if block.timestamp >= 0:
            return 0
    else:
        if timeStaked[address(arg1)] > !stakingDuration:
            revert with 0, 17
        if block.timestamp >= timeStaked[address(arg1)] + stakingDuration:
            return 0
    if not timeStaked[address(arg1)]:
        if 0 < block.timestamp:
            revert with 0, 17
        return -block.timestamp
    if timeStaked[address(arg1)] > !stakingDuration:
        revert with 0, 17
    if timeStaked[address(arg1)] + stakingDuration < block.timestamp:
        revert with 0, 17
    return (timeStaked[address(arg1)] + stakingDuration - block.timestamp)
}



}
