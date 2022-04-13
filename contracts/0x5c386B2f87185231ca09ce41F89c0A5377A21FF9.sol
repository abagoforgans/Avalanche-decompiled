contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2, address arg3)
#  - harvest(uint256 arg1, address arg2)
#  - emergencyWithdraw(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3)
#
address owner;
address rewardAddress;
array of struct poolInfo;
array of address lpToken;
array of address rewarder;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 rewardPerSecond;
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

function reward() payable {
    return rewardAddress
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerSecond = arg1
    emit LogRewardPerSecond(arg1);
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

function add(uint256 arg1, address arg2, address arg3) payable {
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
    if lpToken.length < 1:
        revert with 0, 17
    emit LogPoolAddition(arg1, lpToken.length - 1, arg2, arg3);
}

function set(uint256 arg1, uint256 arg2, address arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_256:
        return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512
    if arg1 >= lpToken.length:
        revert with 0, 50
    require ext_code.size(lpToken[arg1])
    staticcall lpToken[arg1].0x70a08231 with:
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

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg1 >= lpToken.length:
        revert with 0, 50
    require ext_code.size(lpToken[arg1])
    staticcall lpToken[arg1].0x70a08231 with:
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

function massUpdatePools(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        _28 = mem[64]
        mem[64] = mem[64] + 96
        mem[_28] = 0
        mem[_28 + 32] = 0
        mem[_28 + 64] = 0
        if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 2
        _30 = mem[64]
        mem[64] = mem[64] + 96
        mem[_30] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_30 + 32] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_30 + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
        if block.timestamp > poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
            if cd[((32 * idx) + arg1 + 36)] >= lpToken.length:
                revert with 0, 50
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpToken[cd[((32 * idx) + arg1 + 36)]])
            staticcall lpToken[cd[((32 * idx) + arg1 + 36)]].0x70a08231 with:
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
                if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.timestamp
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _35
                mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                emit LogUpdatePool(block.timestamp, _35, poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
            else:
                if block.timestamp < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                    revert with 0, 17
                if block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 and rewardPerSecond > -1 / block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * rewardPerSecond) and poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_34]:
                    revert with 0, 18
                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / mem[_34]):
                    revert with 0, 17
                mem[_30] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512) / totalAllocPoint / mem[_34])
                mem[_30 + 32] = block.timestamp
                if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = mem[_30]
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.timestamp
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
                _52 = mem[_30]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _35
                mem[mem[64] + 64] = _52
                emit LogUpdatePool(block.timestamp, _35, _52, cd[((32 * idx) + arg1 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function harvestAllRewards(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 5)
        if userInfo[idx][msg.sender].field_0:
            _419 = mem[64]
            mem[64] = mem[64] + 96
            mem[_419] = 0
            mem[_419 + 32] = 0
            mem[_419 + 64] = 0
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 2
            _421 = mem[64]
            mem[64] = mem[64] + 96
            mem[_421] = poolInfo[idx].field_0
            mem[_421 + 32] = poolInfo[idx].field_256
            mem[_421 + 64] = poolInfo[idx].field_512
            if block.timestamp <= poolInfo[idx].field_256:
                mem[0] = msg.sender
                mem[32] = sha3(idx, 5)
                if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_0 > -1 / userInfo[idx][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12
                if not (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256:
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
                        call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                else:
                    _444 = mem[64]
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                    _448 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_448 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_448 + 36 len 28]
                    mem[64] = _444 + 164
                    mem[_444 + 100] = 32
                    mem[_444 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewardAddress):
                        revert with 0, 'Address: call to non-contract'
                    _458 = mem[_448]
                    s = 0
                    while s < _458:
                        mem[s + _444 + 164] = mem[s + _448 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_458) > _458:
                        mem[_458 + _444 + 164] = 0
                    call rewardAddress.mem[_444 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_444 + 168 len _458 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_444 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_444 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _444 + 232] = mem[idx + _444 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_444 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= rewarder.length:
                            revert with 0, 50
                        mem[0] = 4
                        if rewarder[idx]:
                            mem[_444 + 168] = idx
                            mem[_444 + 200] = msg.sender
                            mem[_444 + 232] = arg1
                            mem[_444 + 264] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                            mem[_444 + 296] = userInfo[idx][msg.sender].field_0
                            require ext_code.size(rewarder[idx])
                            call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[_444 + 164] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                    else:
                        mem[64] = _444 + ceil32(return_data.size) + 165
                        mem[_444 + 164] = return_data.size
                        mem[_444 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_444 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_444 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _444 + ceil32(return_data.size) + 233] = mem[idx + _444 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_444 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_444 + 196] == bool(mem[_444 + 196])
                            if not mem[_444 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= rewarder.length:
                            revert with 0, 50
                        mem[0] = 4
                        if rewarder[idx]:
                            mem[_444 + ceil32(return_data.size) + 169] = idx
                            mem[_444 + ceil32(return_data.size) + 201] = msg.sender
                            mem[_444 + ceil32(return_data.size) + 233] = arg1
                            mem[_444 + ceil32(return_data.size) + 265] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                            mem[_444 + ceil32(return_data.size) + 297] = userInfo[idx][msg.sender].field_0
                            require ext_code.size(rewarder[idx])
                            call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[_444 + ceil32(return_data.size) + 165] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                emit Harvest(((userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
            else:
                if idx >= lpToken.length:
                    revert with 0, 50
                mem[0] = 3
                mem[mem[64] + 4] = this.address
                require ext_code.size(lpToken[idx])
                staticcall lpToken[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _429 = mem[_428]
                if not mem[_428]:
                    mem[_421 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = block.timestamp
                    poolInfo[idx].field_512 = poolInfo[idx].field_512
                    mem[mem[64] + 32] = _429
                    mem[mem[64] + 64] = poolInfo[idx].field_0
                    emit LogUpdatePool(block.timestamp, _429, poolInfo[idx].field_0, idx);
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 5)
                    if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_0 > -1 / userInfo[idx][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12
                    if not (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256:
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
                            call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                    else:
                        _461 = mem[64]
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                        _466 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_466 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_466 + 36 len 28]
                        mem[64] = _461 + 164
                        mem[_461 + 100] = 32
                        mem[_461 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(rewardAddress):
                            revert with 0, 'Address: call to non-contract'
                        _485 = mem[_466]
                        s = 0
                        while s < _485:
                            mem[s + _461 + 164] = mem[s + _466 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_485) > _485:
                            mem[_485 + _461 + 164] = 0
                        call rewardAddress.mem[_461 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_461 + 168 len _485 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_461 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_461 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _461 + 232] = mem[idx + _461 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_461 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= rewarder.length:
                                revert with 0, 50
                            mem[0] = 4
                            if rewarder[idx]:
                                mem[_461 + 168] = idx
                                mem[_461 + 200] = msg.sender
                                mem[_461 + 232] = arg1
                                mem[_461 + 264] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                                mem[_461 + 296] = userInfo[idx][msg.sender].field_0
                                require ext_code.size(rewarder[idx])
                                call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[_461 + 164] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                        else:
                            mem[64] = _461 + ceil32(return_data.size) + 165
                            mem[_461 + 164] = return_data.size
                            mem[_461 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_461 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_461 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _461 + ceil32(return_data.size) + 233] = mem[idx + _461 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_461 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_461 + 196] == bool(mem[_461 + 196])
                                if not mem[_461 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= rewarder.length:
                                revert with 0, 50
                            mem[0] = 4
                            if rewarder[idx]:
                                mem[_461 + ceil32(return_data.size) + 169] = idx
                                mem[_461 + ceil32(return_data.size) + 201] = msg.sender
                                mem[_461 + ceil32(return_data.size) + 233] = arg1
                                mem[_461 + ceil32(return_data.size) + 265] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
                                mem[_461 + ceil32(return_data.size) + 297] = userInfo[idx][msg.sender].field_0
                                require ext_code.size(rewarder[idx])
                                call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[_461 + ceil32(return_data.size) + 165] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
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
                    if not mem[_428]:
                        revert with 0, 18
                    if poolInfo[idx].field_0 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_428]):
                        revert with 0, 17
                    mem[_421] = poolInfo[idx].field_0 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_512) - (poolInfo[idx].field_256 * rewardPerSecond * poolInfo[idx].field_512) / totalAllocPoint / mem[_428])
                    mem[_421 + 32] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    poolInfo[idx].field_0 = mem[_421]
                    poolInfo[idx].field_256 = block.timestamp
                    poolInfo[idx].field_512 = poolInfo[idx].field_512
                    _500 = mem[_421]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _429
                    mem[mem[64] + 64] = _500
                    emit LogUpdatePool(block.timestamp, _429, _500, idx);
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 5)
                    _510 = mem[_421]
                    if userInfo[idx][msg.sender].field_0 and mem[_421] > -1 / userInfo[idx][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_0 * mem[_421] / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * mem[_421] / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * mem[_421] / 10^12
                    if not (userInfo[idx][msg.sender].field_0 * mem[_421] / 10^12) - userInfo[idx][msg.sender].field_256:
                        if idx >= rewarder.length:
                            revert with 0, 50
                        mem[0] = 4
                        if rewarder[idx]:
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg1
                            mem[mem[64] + 100] = (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256
                            mem[mem[64] + 132] = userInfo[idx][msg.sender].field_0
                            require ext_code.size(rewarder[idx])
                            call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256
                    else:
                        _604 = mem[64]
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256
                        _612 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_612 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_612 + 36 len 28]
                        mem[64] = _604 + 164
                        mem[_604 + 100] = 32
                        mem[_604 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(rewardAddress):
                            revert with 0, 'Address: call to non-contract'
                        _682 = mem[_612]
                        s = 0
                        while s < _682:
                            mem[s + _604 + 164] = mem[s + _612 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_682) > _682:
                            mem[_682 + _604 + 164] = 0
                        call rewardAddress.mem[_604 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_604 + 168 len _682 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_604 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_604 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _604 + 232] = mem[idx + _604 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_604 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= rewarder.length:
                                revert with 0, 50
                            mem[0] = 4
                            if rewarder[idx]:
                                mem[_604 + 168] = idx
                                mem[_604 + 200] = msg.sender
                                mem[_604 + 232] = arg1
                                mem[_604 + 264] = (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256
                                mem[_604 + 296] = userInfo[idx][msg.sender].field_0
                                require ext_code.size(rewarder[idx])
                                call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[_604 + 164] = (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256
                        else:
                            mem[64] = _604 + ceil32(return_data.size) + 165
                            mem[_604 + 164] = return_data.size
                            mem[_604 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_604 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_604 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _604 + ceil32(return_data.size) + 233] = mem[idx + _604 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_604 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_604 + 196] == bool(mem[_604 + 196])
                                if not mem[_604 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= rewarder.length:
                                revert with 0, 50
                            mem[0] = 4
                            if rewarder[idx]:
                                mem[_604 + ceil32(return_data.size) + 169] = idx
                                mem[_604 + ceil32(return_data.size) + 201] = msg.sender
                                mem[_604 + ceil32(return_data.size) + 233] = arg1
                                mem[_604 + ceil32(return_data.size) + 265] = (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256
                                mem[_604 + ceil32(return_data.size) + 297] = userInfo[idx][msg.sender].field_0
                                require ext_code.size(rewarder[idx])
                                call rewarder[idx].onReward(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args idx, msg.sender, address(arg1), (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256, userInfo[idx][msg.sender].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[_604 + ceil32(return_data.size) + 165] = (userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256
                    emit Harvest(((userInfo[idx][msg.sender].field_0 * _510 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
