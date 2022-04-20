contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#  - _fallback()
#
address owner;
uint256 rewardsPerSecond;
array of struct poolInfo;
mapping of struct userInfo;
address treasuryAddress;
uint256 totalAllocPoint;
uint256 startTimestamp;
uint256 endTimestamp;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() {
    return totalAllocPoint
}

function treasury() {
    return treasuryAddress
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function endTimestamp() {
    return endTimestamp
}

function startTimestamp() {
    return startTimestamp
}

function rewardsPerSecond() {
    return rewardsPerSecond
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    emit 0x92baf9e4: treasuryAddress, arg1
}

function rewardsActive() {
    if block.timestamp >= startTimestamp:
        if block.timestamp <= endTimestamp:
            if totalAllocPoint > 0:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > endTimestamp:
        if endTimestamp <= arg1:
            return 0
        if endTimestamp < arg1:
            revert with 0, 17
        return (endTimestamp - arg1)
    if arg2 <= arg1:
        return 0
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addRewardsBalance() payable {
    if owner != msg.sender:
        if treasuryAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot do this, not owner or treasury.'
    if rewardsPerSecond:
        if not rewardsPerSecond:
            revert with 0, 18
        if block.timestamp >= startTimestamp:
            if block.timestamp > !(eth.balance(this.address) / rewardsPerSecond):
                revert with 0, 17
            if block.timestamp + (eth.balance(this.address) / rewardsPerSecond) > block.timestamp:
                if block.timestamp + (eth.balance(this.address) / rewardsPerSecond) != endTimestamp:
                    emit 0xc27995de: endTimestamp, block.timestamp + (eth.balance(this.address) / rewardsPerSecond)
                    endTimestamp = block.timestamp + (eth.balance(this.address) / rewardsPerSecond)
        else:
            if startTimestamp > !(eth.balance(this.address) / rewardsPerSecond):
                revert with 0, 17
            if startTimestamp + (eth.balance(this.address) / rewardsPerSecond) > startTimestamp:
                if startTimestamp + (eth.balance(this.address) / rewardsPerSecond) != endTimestamp:
                    emit 0xc27995de: endTimestamp, startTimestamp + (eth.balance(this.address) / rewardsPerSecond)
                    endTimestamp = startTimestamp + (eth.balance(this.address) / rewardsPerSecond)
}

function setRewardsPerSecond(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if treasuryAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot do this, not owner or treasury.'
    emit 0x6c5ac63f: rewardsPerSecond, arg1
    rewardsPerSecond = arg1
    if rewardsPerSecond:
        if not rewardsPerSecond:
            revert with 0, 18
        if block.timestamp >= startTimestamp:
            if block.timestamp > !(eth.balance(this.address) / rewardsPerSecond):
                revert with 0, 17
            if block.timestamp + (eth.balance(this.address) / rewardsPerSecond) > block.timestamp:
                if block.timestamp + (eth.balance(this.address) / rewardsPerSecond) != endTimestamp:
                    emit 0xc27995de: endTimestamp, block.timestamp + (eth.balance(this.address) / rewardsPerSecond)
                    endTimestamp = block.timestamp + (eth.balance(this.address) / rewardsPerSecond)
        else:
            if startTimestamp > !(eth.balance(this.address) / rewardsPerSecond):
                revert with 0, 17
            if startTimestamp + (eth.balance(this.address) / rewardsPerSecond) > startTimestamp:
                if startTimestamp + (eth.balance(this.address) / rewardsPerSecond) != endTimestamp:
                    emit 0xc27995de: endTimestamp, startTimestamp + (eth.balance(this.address) / rewardsPerSecond)
                    endTimestamp = startTimestamp + (eth.balance(this.address) / rewardsPerSecond)
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1024:
            if block.timestamp > endTimestamp:
                if endTimestamp <= poolInfo[arg1].field_512:
                    if False and rewardsPerSecond > 0:
                        revert with 0, 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                else:
                    if endTimestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if endTimestamp - poolInfo[arg1].field_512 and rewardsPerSecond > -1 / endTimestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (endTimestamp * rewardsPerSecond) - (poolInfo[arg1].field_512 * rewardsPerSecond) and poolInfo[arg1].field_256 > -1 / (endTimestamp * rewardsPerSecond) - (poolInfo[arg1].field_512 * rewardsPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (endTimestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (endTimestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (endTimestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
            else:
                if block.timestamp <= poolInfo[arg1].field_512:
                    if False and rewardsPerSecond > 0:
                        revert with 0, 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                else:
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[arg1].field_512 and rewardsPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_512 * rewardsPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_512 * rewardsPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        if block.timestamp > poolInfo[idx].field_512:
            if poolInfo[idx].field_1024:
                if block.timestamp > endTimestamp:
                    if endTimestamp <= poolInfo[idx].field_512:
                        if False and rewardsPerSecond > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[idx].field_1024:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                    else:
                        if endTimestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if endTimestamp - poolInfo[idx].field_512 and rewardsPerSecond > -1 / endTimestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (endTimestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond) and poolInfo[idx].field_256 > -1 / (endTimestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[idx].field_1024:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                else:
                    if block.timestamp <= poolInfo[idx].field_512:
                        if False and rewardsPerSecond > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[idx].field_1024:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                    else:
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - poolInfo[idx].field_512 and rewardsPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not poolInfo[idx].field_1024:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1024:
                    if block.timestamp > endTimestamp:
                        if endTimestamp <= poolInfo[idx].field_512:
                            if False and rewardsPerSecond > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1024:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            if endTimestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if endTimestamp - poolInfo[idx].field_512 and rewardsPerSecond > -1 / endTimestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (endTimestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond) and poolInfo[idx].field_256 > -1 / (endTimestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1024:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                    else:
                        if block.timestamp <= poolInfo[idx].field_512:
                            if False and rewardsPerSecond > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1024:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.timestamp - poolInfo[idx].field_512 and rewardsPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1024:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = block.timestamp
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
    emit PoolUpdated(poolInfo[arg1].field_256, arg2, totalAllocPoint, arg1);
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1024:
                    if block.timestamp > endTimestamp:
                        if endTimestamp <= poolInfo[idx].field_512:
                            if False and rewardsPerSecond > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1024:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            if endTimestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if endTimestamp - poolInfo[idx].field_512 and rewardsPerSecond > -1 / endTimestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (endTimestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond) and poolInfo[idx].field_256 > -1 / (endTimestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1024:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (endTimestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                    else:
                        if block.timestamp <= poolInfo[idx].field_512:
                            if False and rewardsPerSecond > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1024:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.timestamp - poolInfo[idx].field_512 and rewardsPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_512 * rewardsPerSecond):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not poolInfo[idx].field_1024:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardsPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if 0 == totalAllocPoint:
        if rewardsPerSecond:
            if not rewardsPerSecond:
                revert with 0, 18
            if block.timestamp >= startTimestamp:
                if block.timestamp > !(eth.balance(this.address) / rewardsPerSecond):
                    revert with 0, 17
                if block.timestamp + (eth.balance(this.address) / rewardsPerSecond) > block.timestamp:
                    if block.timestamp + (eth.balance(this.address) / rewardsPerSecond) != endTimestamp:
                        emit 0xc27995de: endTimestamp, block.timestamp + (eth.balance(this.address) / rewardsPerSecond)
                        endTimestamp = block.timestamp + (eth.balance(this.address) / rewardsPerSecond)
            else:
                if startTimestamp > !(eth.balance(this.address) / rewardsPerSecond):
                    revert with 0, 17
                if startTimestamp + (eth.balance(this.address) / rewardsPerSecond) > startTimestamp:
                    if startTimestamp + (eth.balance(this.address) / rewardsPerSecond) != endTimestamp:
                        emit 0xc27995de: endTimestamp, startTimestamp + (eth.balance(this.address) / rewardsPerSecond)
                        endTimestamp = startTimestamp + (eth.balance(this.address) / rewardsPerSecond)
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storC257[stor3.length] = arg1
    if block.timestamp > startTimestamp:
        storC257[stor3.length] = block.timestamp
        storC257[stor3.length] = 0
        storC257[stor3.length] = 0
        if poolInfo.length < 1:
            revert with 0, 17
        emit PoolAdded(arg1, totalAllocPoint, block.timestamp, poolInfo.length - 1, arg2);
    else:
        storC257[stor3.length] = startTimestamp
        storC257[stor3.length] = 0
        storC257[stor3.length] = 0
        if poolInfo.length < 1:
            revert with 0, 17
        emit PoolAdded(arg1, totalAllocPoint, startTimestamp, poolInfo.length - 1, arg2);
}

function pendingRewards(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 >= userInfo[arg1][address(arg2)].field_256:
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    else:
        if not poolInfo[arg1].field_1024:
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 >= userInfo[arg1][address(arg2)].field_256:
                return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
        else:
            if block.timestamp > endTimestamp:
                if endTimestamp <= poolInfo[arg1].field_512:
                    if False and rewardsPerSecond > 0:
                        revert with 0, 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 >= userInfo[arg1][address(arg2)].field_256:
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                else:
                    if endTimestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if endTimestamp - poolInfo[arg1].field_512 and rewardsPerSecond > -1 / endTimestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (endTimestamp * rewardsPerSecond) - (poolInfo[arg1].field_512 * rewardsPerSecond) and poolInfo[arg1].field_256 > -1 / (endTimestamp * rewardsPerSecond) - (poolInfo[arg1].field_512 * rewardsPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (endTimestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (endTimestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (endTimestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endTimestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 >= userInfo[arg1][address(arg2)].field_256:
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endTimestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            else:
                if block.timestamp <= poolInfo[arg1].field_512:
                    if False and rewardsPerSecond > 0:
                        revert with 0, 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 >= userInfo[arg1][address(arg2)].field_256:
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                else:
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[arg1].field_512 and rewardsPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_512 * rewardsPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_512 * rewardsPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 >= userInfo[arg1][address(arg2)].field_256:
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardsPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    return 0
}



}
