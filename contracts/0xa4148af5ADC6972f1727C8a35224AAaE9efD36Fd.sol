contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2, address arg3)
#  - emergencyWithdraw(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3)
#
address owner;
address PLATFORM_ADDRESS;
address sub_9b8e5563Address;
array of struct poolInfo;
array of address lpToken;
array of address rewarder;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 rewardPerSecond;
uint8 paused;
uint256 stor9;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function paused() payable {
    return bool(uint8(paused))
}

function lpToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lpToken.length
    return lpToken[arg1]
}

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9b8e5563(?) payable {
    return sub_9b8e5563Address
}

function PLATFORM_ADDRESS() payable {
    return PLATFORM_ADDRESS
}

function rewarder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewarder.length
    return rewarder[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor9) = not uint8(paused) or Mask(248, 8, uint256(stor9))
}

function sub_fa4c060e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_0 = 0
    poolInfo[arg1].field_256 = block.timestamp
}

function setPlatformAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'cannot be Zero Address'
    if not uint8(paused):
        revert with 0, 'cannot be Zero Address'
    PLATFORM_ADDRESS = arg1
}

function enableFarming() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(paused) = 0
    idx = 0
    while idx < poolInfo.length:
        poolInfo[idx].field_0 = 0
        mem[0] = 3
        poolInfo[idx].field_256 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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

function sub_a7a0b84a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PendragonChef::setRewardMinter: Cannot be an EOA'
    if not uint8(paused):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PendragonChef::setRewardMinter: Cannot be an EOA'
    sub_9b8e5563Address = address(arg1)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp <= poolInfo[arg1].field_256:
        return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
    if arg1 >= lpToken.length:
        revert with 'NH{q', 50
    require ext_code.size(lpToken[arg1])
    staticcall lpToken[arg1].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if arg1 >= poolInfo.length:
            revert with 'NH{q', 50
        poolInfo[arg1].field_256 = block.timestamp
        emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0, arg1);
        return poolInfo[arg1].field_0, block.timestamp, poolInfo[arg1].field_512, poolInfo[arg1].field_768
    if poolInfo[arg1].field_512 <= 0:
        if arg1 >= poolInfo.length:
            revert with 'NH{q', 50
        poolInfo[arg1].field_256 = block.timestamp
        emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0, arg1);
        return poolInfo[arg1].field_0, block.timestamp, poolInfo[arg1].field_512, poolInfo[arg1].field_768
    if block.timestamp < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if block.timestamp - poolInfo[arg1].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond) and poolInfo[arg1].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_0 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]
    poolInfo[arg1].field_256 = block.timestamp
    emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]), arg1);
    return poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]), 
           block.timestamp,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        _41 = mem[64]
        mem[64] = mem[64] + 128
        mem[_41] = 0
        mem[_41 + 32] = 0
        mem[_41 + 64] = 0
        mem[_41 + 96] = 0
        mem[0] = 3
        _43 = mem[64]
        mem[64] = mem[64] + 128
        mem[_43] = poolInfo[idx].field_0
        mem[_43 + 32] = poolInfo[idx].field_256
        mem[_43 + 64] = poolInfo[idx].field_512
        mem[_43 + 96] = poolInfo[idx].field_768
        if block.timestamp > poolInfo[idx].field_256:
            if idx >= lpToken.length:
                revert with 'NH{q', 50
            mem[0] = 4
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _49 = mem[_48]
            if mem[_48] <= 0:
                mem[_43 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                poolInfo[idx].field_256 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _49
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _49, poolInfo[idx].field_0, idx);
            else:
                if poolInfo[idx].field_512 <= 0:
                    mem[_43 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_256 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _49
                    mem[mem[64] + 64] = poolInfo[idx].field_0
                    emit LogUpdatePool(block.timestamp, _49, poolInfo[idx].field_0, idx);
                else:
                    if block.timestamp < poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not mem[_48]:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_48]):
                        revert with 'NH{q', 17
                    mem[_43] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_48])
                    mem[_43 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_0 = mem[_43]
                    poolInfo[idx].field_256 = block.timestamp
                    _78 = mem[_43]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _49
                    mem[mem[64] + 64] = _78
                    emit LogUpdatePool(block.timestamp, _49, _78, idx);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function setRewardPerSecond(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PendragonChef::setRewardPerSecond: > MAX_REWARD_PER_SECOND'
    idx = 0
    while idx < poolInfo.length:
        _49 = mem[64]
        mem[64] = mem[64] + 128
        mem[_49] = 0
        mem[_49 + 32] = 0
        mem[_49 + 64] = 0
        mem[_49 + 96] = 0
        mem[0] = 3
        _51 = mem[64]
        mem[64] = mem[64] + 128
        mem[_51] = poolInfo[idx].field_0
        mem[_51 + 32] = poolInfo[idx].field_256
        mem[_51 + 64] = poolInfo[idx].field_512
        mem[_51 + 96] = poolInfo[idx].field_768
        if block.timestamp > poolInfo[idx].field_256:
            if idx >= lpToken.length:
                revert with 'NH{q', 50
            mem[0] = 4
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _57 = mem[_56]
            if mem[_56] <= 0:
                mem[_51 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                poolInfo[idx].field_256 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _57
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _57, poolInfo[idx].field_0, idx);
            else:
                if poolInfo[idx].field_512 <= 0:
                    mem[_51 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_256 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _57
                    mem[mem[64] + 64] = poolInfo[idx].field_0
                    emit LogUpdatePool(block.timestamp, _57, poolInfo[idx].field_0, idx);
                else:
                    if block.timestamp < poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not mem[_56]:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_56]):
                        revert with 'NH{q', 17
                    mem[_51] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_56])
                    mem[_51 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_0 = mem[_51]
                    poolInfo[idx].field_256 = block.timestamp
                    _86 = mem[_51]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _57
                    mem[mem[64] + 64] = _86
                    emit LogUpdatePool(block.timestamp, _57, _86, idx);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    rewardPerSecond = arg1
    emit LogRewardPerSecond(arg1);
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if arg1 >= lpToken.length:
        revert with 'NH{q', 50
    require ext_code.size(lpToken[arg1])
    staticcall lpToken[arg1].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_256:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_256 >= 0 and userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_256 < 0 and userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_256 >= 0 and userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_256 < 0 and userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if block.timestamp - poolInfo[arg1].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond) and poolInfo[arg1].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_256 >= 0 and (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_256 < 0 and (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function set(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg3 <= 1000
    idx = 0
    while idx < poolInfo.length:
        _55 = mem[64]
        mem[64] = mem[64] + 128
        mem[_55] = 0
        mem[_55 + 32] = 0
        mem[_55 + 64] = 0
        mem[_55 + 96] = 0
        mem[0] = 3
        _58 = mem[64]
        mem[64] = mem[64] + 128
        mem[_58] = poolInfo[idx].field_0
        mem[_58 + 32] = poolInfo[idx].field_256
        mem[_58 + 64] = poolInfo[idx].field_512
        mem[_58 + 96] = poolInfo[idx].field_768
        if block.timestamp > poolInfo[idx].field_256:
            if idx >= lpToken.length:
                revert with 'NH{q', 50
            mem[0] = 4
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _65 = mem[_63]
            if mem[_63] <= 0:
                mem[_58 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                poolInfo[idx].field_256 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _65
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _65, poolInfo[idx].field_0, idx);
            else:
                if poolInfo[idx].field_512 <= 0:
                    mem[_58 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_256 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _65
                    mem[mem[64] + 64] = poolInfo[idx].field_0
                    emit LogUpdatePool(block.timestamp, _65, poolInfo[idx].field_0, idx);
                else:
                    if block.timestamp < poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not mem[_63]:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_63]):
                        revert with 'NH{q', 17
                    mem[_58] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_63])
                    mem[_58 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_0 = mem[_58]
                    poolInfo[idx].field_256 = block.timestamp
                    _104 = mem[_58]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _65
                    mem[mem[64] + 64] = _104
                    emit LogUpdatePool(block.timestamp, _65, _104, idx);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if totalAllocPoint < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if totalAllocPoint - poolInfo[arg1].field_512 > !arg2:
        revert with 'NH{q', 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_512 + arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_512 = arg2
    poolInfo[arg1].field_768 = arg3
    if arg1 >= rewarder.length:
        revert with 'NH{q', 50
    if not arg5:
        emit LogSetPool(arg2, arg5, arg1, rewarder[arg1]);
    else:
        rewarder[arg1] = arg4
        if arg5:
            emit LogSetPool(arg2, arg5, arg1, arg4);
        else:
            if arg1 >= rewarder.length:
                revert with 'NH{q', 50
            emit LogSetPool(arg2, arg5, arg1, rewarder[arg1]);
}

function add(uint256 arg1, address arg2, address arg3, uint256 arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg4 <= 1000
    idx = 0
    while idx < poolInfo.length:
        if idx >= lpToken.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if lpToken[idx] == arg2:
            revert with 0, 'add: existing pool?'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < poolInfo.length:
        _67 = mem[64]
        mem[64] = mem[64] + 128
        mem[_67] = 0
        mem[_67 + 32] = 0
        mem[_67 + 64] = 0
        mem[_67 + 96] = 0
        mem[0] = 3
        _69 = mem[64]
        mem[64] = mem[64] + 128
        mem[_69] = poolInfo[idx].field_0
        mem[_69 + 32] = poolInfo[idx].field_256
        mem[_69 + 64] = poolInfo[idx].field_512
        mem[_69 + 96] = poolInfo[idx].field_768
        if block.timestamp > poolInfo[idx].field_256:
            if idx >= lpToken.length:
                revert with 'NH{q', 50
            mem[0] = 4
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_81]
            if mem[_81] <= 0:
                mem[_69 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                poolInfo[idx].field_256 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _84
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _84, poolInfo[idx].field_0, idx);
            else:
                if poolInfo[idx].field_512 <= 0:
                    mem[_69 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_256 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _84
                    mem[mem[64] + 64] = poolInfo[idx].field_0
                    emit LogUpdatePool(block.timestamp, _84, poolInfo[idx].field_0, idx);
                else:
                    if block.timestamp < poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not mem[_81]:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_81]):
                        revert with 'NH{q', 17
                    mem[_69] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_81])
                    mem[_69 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_0 = mem[_69]
                    poolInfo[idx].field_256 = block.timestamp
                    _113 = mem[_69]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _84
                    mem[mem[64] + 64] = _113
                    emit LogUpdatePool(block.timestamp, _84, _113, idx);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if totalAllocPoint > !arg1:
        revert with 'NH{q', 17
    totalAllocPoint += arg1
    lpToken.length++
    lpToken[lpToken.length] = arg2
    rewarder.length++
    stor36B6[stor5.length] = arg3
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = 0
    storC257[stor3.length] = block.timestamp
    storC257[stor3.length] = arg1
    storC257[stor3.length] = arg4
    if 24 < poolInfo.length:
        revert with 0, 'PendragonChef::add: > MAX_NUM_OF_POOLS'
    if lpToken.length < 1:
        revert with 'NH{q', 17
    emit LogPoolAddition(arg1, lpToken.length - 1, arg2, arg3);
}

function harvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require not uint8(paused)
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp <= poolInfo[arg1].field_256:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][msg.sender].field_256 >= 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
            require ext_code.size(sub_9b8e5563Address)
            call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= rewarder.length:
            revert with 'NH{q', 50
        if rewarder[arg1]:
            require ext_code.size(rewarder[arg1])
            call rewarder[arg1].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, msg.sender, address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256, userInfo[arg1][msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
    else:
        if arg1 >= lpToken.length:
            revert with 'NH{q', 50
        require ext_code.size(lpToken[arg1])
        staticcall lpToken[arg1].balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if arg1 >= poolInfo.length:
                revert with 'NH{q', 50
            poolInfo[arg1].field_256 = block.timestamp
            emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0, arg1);
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 'NH{q', 17
            if userInfo[arg1][msg.sender].field_256 >= 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_9b8e5563Address)
                call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg1 >= rewarder.length:
                revert with 'NH{q', 50
            if rewarder[arg1]:
                require ext_code.size(rewarder[arg1])
                call rewarder[arg1].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, msg.sender, address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256, userInfo[arg1][msg.sender].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
        else:
            if poolInfo[arg1].field_512 <= 0:
                if arg1 >= poolInfo.length:
                    revert with 'NH{q', 50
                poolInfo[arg1].field_256 = block.timestamp
                emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0, arg1);
                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][msg.sender].field_0:
                    revert with 'NH{q', 17
                if userInfo[arg1][msg.sender].field_256 >= 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(sub_9b8e5563Address)
                    call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg1 >= rewarder.length:
                    revert with 'NH{q', 50
                if rewarder[arg1]:
                    require ext_code.size(rewarder[arg1])
                    call rewarder[arg1].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, msg.sender, address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256, userInfo[arg1][msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            else:
                if block.timestamp < poolInfo[arg1].field_256:
                    revert with 'NH{q', 17
                if block.timestamp - poolInfo[arg1].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_256:
                    revert with 'NH{q', 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond) and poolInfo[arg1].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if arg1 >= poolInfo.length:
                    revert with 'NH{q', 50
                poolInfo[arg1].field_0 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_256 = block.timestamp
                emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]), arg1);
                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                    revert with 'NH{q', 17
                if userInfo[arg1][msg.sender].field_256 >= 0 and (poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if userInfo[arg1][msg.sender].field_256 < 0 and (poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
                if ((poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(sub_9b8e5563Address)
                    call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), ((poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg1 >= rewarder.length:
                    revert with 'NH{q', 50
                if rewarder[arg1]:
                    require ext_code.size(rewarder[arg1])
                    call rewarder[arg1].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, msg.sender, address(arg2), ((poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256, userInfo[arg1][msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit Harvest((((poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
}

function harvestAllRewards(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < poolInfo.length:
        require not uint8(paused)
        _117 = mem[64]
        mem[64] = mem[64] + 128
        mem[_117] = 0
        mem[_117 + 32] = 0
        mem[_117 + 64] = 0
        mem[_117 + 96] = 0
        if idx >= poolInfo.length:
            revert with 'NH{q', 50
        mem[0] = 3
        _119 = mem[64]
        mem[64] = mem[64] + 128
        mem[_119] = poolInfo[idx].field_0
        mem[_119 + 32] = poolInfo[idx].field_256
        mem[_119 + 64] = poolInfo[idx].field_512
        mem[_119 + 96] = poolInfo[idx].field_768
        if block.timestamp <= poolInfo[idx].field_256:
            mem[32] = sha3(idx, 6)
            if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_0 > -1 / userInfo[idx][msg.sender].field_0:
                revert with 'NH{q', 17
            if userInfo[idx][msg.sender].field_256 >= 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12
            if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256:
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                require ext_code.size(sub_9b8e5563Address)
                call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx >= rewarder.length:
                revert with 'NH{q', 50
            mem[0] = 5
            if rewarder[idx]:
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg1
                mem[mem[64] + 100] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                mem[mem[64] + 132] = userInfo[idx][msg.sender].field_0
                require ext_code.size(rewarder[idx])
                call rewarder[idx].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
            emit Harvest(((userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
        else:
            if idx >= lpToken.length:
                revert with 'NH{q', 50
            mem[0] = 4
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _128 = mem[_127]
            if mem[_127] <= 0:
                mem[_119 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 'NH{q', 50
                poolInfo[idx].field_256 = block.timestamp
                mem[mem[64] + 32] = _128
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _128, poolInfo[idx].field_0, idx);
                mem[32] = sha3(idx, 6)
                if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_0 > -1 / userInfo[idx][msg.sender].field_0:
                    revert with 'NH{q', 17
                if userInfo[idx][msg.sender].field_256 >= 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12
                if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256:
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                    require ext_code.size(sub_9b8e5563Address)
                    call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx >= rewarder.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                if rewarder[idx]:
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                    mem[mem[64] + 132] = userInfo[idx][msg.sender].field_0
                    require ext_code.size(rewarder[idx])
                    call rewarder[idx].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                emit Harvest(((userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
            else:
                if poolInfo[idx].field_512 <= 0:
                    mem[_119 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    poolInfo[idx].field_256 = block.timestamp
                    mem[mem[64] + 32] = _128
                    mem[mem[64] + 64] = poolInfo[idx].field_0
                    emit LogUpdatePool(block.timestamp, _128, poolInfo[idx].field_0, idx);
                    mem[32] = sha3(idx, 6)
                    if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_0 > -1 / userInfo[idx][msg.sender].field_0:
                        revert with 'NH{q', 17
                    if userInfo[idx][msg.sender].field_256 >= 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12
                    if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256:
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                        require ext_code.size(sub_9b8e5563Address)
                        call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx >= rewarder.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    if rewarder[idx]:
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                        mem[mem[64] + 132] = userInfo[idx][msg.sender].field_0
                        require ext_code.size(rewarder[idx])
                        call rewarder[idx].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                    emit Harvest(((userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
                else:
                    if block.timestamp < poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not mem[_127]:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_127]):
                        revert with 'NH{q', 17
                    mem[_119] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_127])
                    mem[_119 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    poolInfo[idx].field_0 = mem[_119]
                    poolInfo[idx].field_256 = block.timestamp
                    _211 = mem[_119]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _128
                    mem[mem[64] + 64] = _211
                    emit LogUpdatePool(block.timestamp, _128, _211, idx);
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 6)
                    _216 = mem[_119]
                    if userInfo[idx][msg.sender].field_0 and mem[_119] > -1 / userInfo[idx][msg.sender].field_0:
                        revert with 'NH{q', 17
                    if userInfo[idx][msg.sender].field_256 >= 0 and userInfo[idx][msg.sender].field_0 * mem[_119] / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * mem[_119] / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * mem[_119] / 10^12
                    if (userInfo[idx][msg.sender].field_0 * mem[_119] / 10^12) - userInfo[idx][msg.sender].field_256:
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = (userInfo[idx][msg.sender].field_0 * _216 / 10^12) - userInfo[idx][msg.sender].field_256
                        require ext_code.size(sub_9b8e5563Address)
                        call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), (userInfo[idx][msg.sender].field_0 * _216 / 10^12) - userInfo[idx][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx >= rewarder.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    if rewarder[idx]:
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = (userInfo[idx][msg.sender].field_0 * _216 / 10^12) - userInfo[idx][msg.sender].field_256
                        mem[mem[64] + 132] = userInfo[idx][msg.sender].field_0
                        require ext_code.size(rewarder[idx])
                        call rewarder[idx].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * _216 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * _216 / 10^12) - userInfo[idx][msg.sender].field_256
                    emit Harvest(((userInfo[idx][msg.sender].field_0 * _216 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
