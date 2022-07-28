contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2, address arg3)
#  - emergencyWithdraw(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3)
#
address owner;
address sub_9b8e5563Address;
array of struct poolInfo;
array of address lpToken;
array of address rewarder;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 rewardPerSecond;
uint8 started;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function started() payable {
    return bool(started)
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

function setStart(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    started = uint8(arg1)
}

function sub_a7a0b84a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9b8e5563Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TerrificChef::setRewardMinter: Cannot redefine rewardMinter'
    sub_9b8e5563Address = address(arg1)
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_256:
        return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512
    if arg1 >= lpToken.length:
        revert with 0, 50
    require ext_code.size(lpToken[arg1])
    staticcall lpToken[arg1].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg1 >= poolInfo.length:
            revert with 0, 50
        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
        poolInfo[arg1].field_256 = block.timestamp
        poolInfo[arg1].field_512 = poolInfo[arg1].field_512
        emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0, arg1);
        return poolInfo[arg1].field_0, block.timestamp, poolInfo[arg1].field_512
    if block.timestamp < poolInfo[arg1].field_256:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_256:
        revert with 0, 17
    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond) and poolInfo[arg1].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_0 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]
    poolInfo[arg1].field_256 = block.timestamp
    poolInfo[arg1].field_512 = poolInfo[arg1].field_512
    emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]), arg1);
    return poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]), 
           block.timestamp,
           poolInfo[arg1].field_512
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        _28 = mem[64]
        mem[64] = mem[64] + 96
        mem[_28] = 0
        mem[_28 + 32] = 0
        mem[_28 + 64] = 0
        mem[0] = 2
        _30 = mem[64]
        mem[64] = mem[64] + 96
        mem[_30] = poolInfo[idx].field_0
        mem[_30 + 32] = poolInfo[idx].field_256
        mem[_30 + 64] = poolInfo[idx].field_512
        if block.timestamp > poolInfo[idx].field_256:
            if idx >= lpToken.length:
                revert with 0, 50
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _34 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _35 = mem[_34]
            if not mem[_34]:
                mem[_30 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _35
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _35, poolInfo[idx].field_0, idx);
            else:
                if block.timestamp < poolInfo[idx].field_256:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_34]:
                    revert with 0, 18
                if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_34]):
                    revert with 0, 17
                mem[_30] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_34])
                mem[_30 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = mem[_30]
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                _52 = mem[_30]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _35
                mem[mem[64] + 64] = _52
                emit LogUpdatePool(block.timestamp, _35, _52, idx);
        if idx == -1:
            revert with 0, 17
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
                    'FantasticChef::setRewardPerSecond: > MAX_REWARD_PER_SECOND'
    idx = 0
    while idx < poolInfo.length:
        _36 = mem[64]
        mem[64] = mem[64] + 96
        mem[_36] = 0
        mem[_36 + 32] = 0
        mem[_36 + 64] = 0
        mem[0] = 2
        _38 = mem[64]
        mem[64] = mem[64] + 96
        mem[_38] = poolInfo[idx].field_0
        mem[_38 + 32] = poolInfo[idx].field_256
        mem[_38 + 64] = poolInfo[idx].field_512
        if block.timestamp > poolInfo[idx].field_256:
            if idx >= lpToken.length:
                revert with 0, 50
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _43 = mem[_42]
            if not mem[_42]:
                mem[_38 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _43
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _43, poolInfo[idx].field_0, idx);
            else:
                if block.timestamp < poolInfo[idx].field_256:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_42]:
                    revert with 0, 18
                if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_42]):
                    revert with 0, 17
                mem[_38] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_42])
                mem[_38 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = mem[_38]
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                _60 = mem[_38]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _43
                mem[mem[64] + 64] = _60
                emit LogUpdatePool(block.timestamp, _43, _60, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardPerSecond = arg1
    emit LogRewardPerSecond(arg1);
}

function set(uint256 arg1, uint256 arg2, address arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        _41 = mem[64]
        mem[64] = mem[64] + 96
        mem[_41] = 0
        mem[_41 + 32] = 0
        mem[_41 + 64] = 0
        mem[0] = 2
        _44 = mem[64]
        mem[64] = mem[64] + 96
        mem[_44] = poolInfo[idx].field_0
        mem[_44 + 32] = poolInfo[idx].field_256
        mem[_44 + 64] = poolInfo[idx].field_512
        if block.timestamp > poolInfo[idx].field_256:
            if idx >= lpToken.length:
                revert with 0, 50
            mem[0] = 3
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
            _50 = mem[_48]
            if not mem[_48]:
                mem[_44 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _50
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _50, poolInfo[idx].field_0, idx);
            else:
                if block.timestamp < poolInfo[idx].field_256:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_48]:
                    revert with 0, 18
                if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_48]):
                    revert with 0, 17
                mem[_44] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_48])
                mem[_44 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = mem[_44]
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                _76 = mem[_44]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _50
                mem[mem[64] + 64] = _76
                emit LogUpdatePool(block.timestamp, _50, _76, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_512:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_512 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_512 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_512 = arg2
    if arg1 >= rewarder.length:
        revert with 0, 50
    if not arg4:
        emit LogSetPool(arg2, arg4, arg1, rewarder[arg1]);
    else:
        rewarder[arg1] = arg3
        if arg4:
            emit LogSetPool(arg2, arg4, arg1, arg3);
        else:
            if arg1 >= rewarder.length:
                revert with 0, 50
            emit LogSetPool(arg2, arg4, arg1, rewarder[arg1]);
}

function add(uint256 arg1, address arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        if idx >= lpToken.length:
            revert with 0, 50
        mem[0] = 3
        if lpToken[idx] == arg2:
            revert with 0, 'add: existing pool?'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < poolInfo.length:
        _52 = mem[64]
        mem[64] = mem[64] + 96
        mem[_52] = 0
        mem[_52 + 32] = 0
        mem[_52 + 64] = 0
        mem[0] = 2
        _54 = mem[64]
        mem[64] = mem[64] + 96
        mem[_54] = poolInfo[idx].field_0
        mem[_54 + 32] = poolInfo[idx].field_256
        mem[_54 + 64] = poolInfo[idx].field_512
        if block.timestamp > poolInfo[idx].field_256:
            if idx >= lpToken.length:
                revert with 0, 50
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _67 = mem[_64]
            if not mem[_64]:
                mem[_54 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _67
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _67, poolInfo[idx].field_0, idx);
            else:
                if block.timestamp < poolInfo[idx].field_256:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_64]:
                    revert with 0, 18
                if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_64]):
                    revert with 0, 17
                mem[_54] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_64])
                mem[_54 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = mem[_54]
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                _84 = mem[_54]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _67
                mem[mem[64] + 64] = _84
                emit LogUpdatePool(block.timestamp, _67, _84, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    lpToken.length++
    lpToken[lpToken.length] = arg2
    rewarder.length++
    rewarder[rewarder.length] = arg3
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = 0
    stor4057[stor2.length] = block.timestamp
    stor4057[stor2.length] = arg1
    if 36 < poolInfo.length:
        revert with 0, 'TerrificChef::add: > MAX_NUM_OF_POOLS'
    if lpToken.length < 1:
        revert with 0, 17
    emit LogPoolAddition(arg1, lpToken.length - 1, arg2, arg3);
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg1 >= lpToken.length:
        revert with 0, 50
    require ext_code.size(lpToken[arg1])
    staticcall lpToken[arg1].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_256:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][address(arg2)].field_256 >= 0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 < 0 and userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][address(arg2)].field_256 >= 0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 < 0 and userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < poolInfo[arg1].field_256:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_256:
        revert with 0, 17
    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond) and poolInfo[arg1].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][address(arg2)].field_256 >= 0:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_256 < 0 and (poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return (((poolInfo[arg1].field_0 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function harvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_256:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
            require ext_code.size(sub_9b8e5563Address)
            call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= rewarder.length:
            revert with 0, 50
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
            revert with 0, 50
        require ext_code.size(lpToken[arg1])
        staticcall lpToken[arg1].balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg1 >= poolInfo.length:
                revert with 0, 50
            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
            poolInfo[arg1].field_256 = block.timestamp
            poolInfo[arg1].field_512 = poolInfo[arg1].field_512
            emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0, arg1);
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_0 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_9b8e5563Address)
                call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg1 >= rewarder.length:
                revert with 0, 50
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
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_256:
                revert with 0, 17
            if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond) and poolInfo[arg1].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_256 * rewardPerSecond):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if arg1 >= poolInfo.length:
                revert with 0, 50
            poolInfo[arg1].field_0 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_256 = block.timestamp
            poolInfo[arg1].field_512 = poolInfo[arg1].field_512
            emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]), arg1);
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 < 0 and (poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
            if ((poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_9b8e5563Address)
                call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), ((poolInfo[arg1].field_0 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_512) - (poolInfo[arg1].field_256 * rewardPerSecond * poolInfo[arg1].field_512) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg1 >= rewarder.length:
                revert with 0, 50
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
        _85 = mem[64]
        mem[64] = mem[64] + 96
        mem[_85] = 0
        mem[_85 + 32] = 0
        mem[_85 + 64] = 0
        mem[0] = 2
        _87 = mem[64]
        mem[64] = mem[64] + 96
        mem[_87] = poolInfo[idx].field_0
        mem[_87 + 32] = poolInfo[idx].field_256
        mem[_87 + 64] = poolInfo[idx].field_512
        if block.timestamp <= poolInfo[idx].field_256:
            mem[32] = sha3(idx, 5)
            if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_0 > -1 / userInfo[idx][msg.sender].field_0:
                revert with 0, 17
            if userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                revert with 0, 17
            if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
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
                revert with 0, 50
            mem[0] = 4
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
                revert with 0, 50
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[idx])
            staticcall lpToken[idx].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _95 = mem[_94]
            if not mem[_94]:
                mem[_87 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                mem[mem[64] + 32] = _95
                mem[mem[64] + 64] = poolInfo[idx].field_0
                emit LogUpdatePool(block.timestamp, _95, poolInfo[idx].field_0, idx);
                mem[32] = sha3(idx, 5)
                if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_0 > -1 / userInfo[idx][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
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
                    revert with 0, 50
                mem[0] = 4
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
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_256:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond) and poolInfo[idx].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_256 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_94]:
                    revert with 0, 18
                if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_94]):
                    revert with 0, 17
                mem[_87] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_94])
                mem[_87 + 32] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[idx].field_0 = mem[_87]
                poolInfo[idx].field_256 = block.timestamp
                poolInfo[idx].field_512 = poolInfo[idx].field_512
                _145 = mem[_87]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _95
                mem[mem[64] + 64] = _145
                emit LogUpdatePool(block.timestamp, _95, _145, idx);
                mem[0] = msg.sender
                mem[32] = sha3(idx, 5)
                _152 = mem[_87]
                if userInfo[idx][msg.sender].field_0 and mem[_87] > -1 / userInfo[idx][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_0 * mem[_87] / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * mem[_87] / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * mem[_87] / 10^12
                if (userInfo[idx][msg.sender].field_0 * mem[_87] / 10^12) - userInfo[idx][msg.sender].field_256:
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = (userInfo[idx][msg.sender].field_0 * _152 / 10^12) - userInfo[idx][msg.sender].field_256
                    require ext_code.size(sub_9b8e5563Address)
                    call sub_9b8e5563Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), (userInfo[idx][msg.sender].field_0 * _152 / 10^12) - userInfo[idx][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx >= rewarder.length:
                    revert with 0, 50
                mem[0] = 4
                if rewarder[idx]:
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = (userInfo[idx][msg.sender].field_0 * _152 / 10^12) - userInfo[idx][msg.sender].field_256
                    mem[mem[64] + 132] = userInfo[idx][msg.sender].field_0
                    require ext_code.size(rewarder[idx])
                    call rewarder[idx].onReward(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * _152 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * _152 / 10^12) - userInfo[idx][msg.sender].field_256
                emit Harvest(((userInfo[idx][msg.sender].field_0 * _152 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
