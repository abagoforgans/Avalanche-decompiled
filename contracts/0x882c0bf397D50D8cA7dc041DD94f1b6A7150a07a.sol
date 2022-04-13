contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const blockTimestamp = block.timestamp

const MAXIMUM_HARVEST_INTERVAL = (12 * 3600)


address owner;
address devAddress;
address tokenAddress;
uint256 tokenPerSecond;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
uint256 endTime;
uint256 maxReflect;

function poolLength() payable {
    return poolInfo.length
}

function getDev() payable {
    return devAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function endTime() payable {
    return endTime
}

function tokenPerSecond() payable {
    return tokenPerSecond
}

function startTime() payable {
    return startTime
}

function getOwner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function maxReflect() payable {
    return maxReflect
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function requestOwnership() payable {
    if endTime <= 0:
        revert with 0, 'ERROR: farming not finished'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args devAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if endTime > 0:
        if arg1 > endTime:
            return 0
        if endTime < arg1:
            revert with 0, 17
        return (endTime - arg1)
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
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

function transferDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the dev'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new dev is the zero address'
    emit 0x6c8b441f: devAddress, arg1
    devAddress = arg1
}

function userPoolLockup(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if userInfo[arg1][address(arg2)].field_768 < block.timestamp - 0x8000000000000000000000000000000000000000000000000000000000000000 and block.timestamp >= 0:
        revert with 0, 17
    if block.timestamp < 0 and userInfo[arg1][address(arg2)].field_768 > block.timestamp + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_768 - block.timestamp >= 0:
        return (userInfo[arg1][address(arg2)].field_768 - block.timestamp)
    else:
        return 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1536:
            poolInfo[arg1].field_512 = block.timestamp
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.timestamp
            else:
                if endTime > 0:
                    poolInfo[arg1].field_512 = block.timestamp
                else:
                    if poolInfo[arg1].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if not block.timestamp - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                    else:
                        if block.timestamp - poolInfo[arg1].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[arg1].field_512:
                            revert with 0, 18
                        if (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) / block.timestamp - poolInfo[arg1].field_512 != tokenPerSecond:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not poolInfo[arg1].field_1536:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_1536:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                        else:
                            if (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
                                revert with 0, 17
                            if not (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
                                revert with 0, 18
                            if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not poolInfo[arg1].field_1536:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                            else:
                                if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_1536:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
                    poolInfo[arg1].field_512 = block.timestamp
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > maxReflect:
                        endTime = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            if not poolInfo[idx].field_1536:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if endTime > 0:
                        poolInfo[idx].field_512 = block.timestamp
                    else:
                        _124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_124] = 30
                        mem[_124 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.timestamp:
                            _125 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _125 + 68] = mem[idx + _124 + 32]
                                idx = idx + 32
                                continue 
                            mem[_125 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _125 + -mem[64] + 100
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[idx].field_512:
                            _131 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_131] = 26
                            mem[_131 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _133 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _133 + 68] = mem[idx + _131 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_133 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _133 + -mem[64] + 100
                            _139 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_139] = 26
                            mem[_139 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _163 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_163] = 26
                                mem[_163 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    _164 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _164 + 68] = mem[idx + _163 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_164 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _164 + -mem[64] + 100
                                if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _199 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_199] > maxReflect:
                                    endTime = block.timestamp
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _173 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_173] = 26
                                mem[_173 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    _176 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _176 + 68] = mem[idx + _173 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_176 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _176 + -mem[64] + 100
                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _221 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_221] > maxReflect:
                                    endTime = block.timestamp
                        else:
                            if block.timestamp - poolInfo[idx].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 18
                            if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) / block.timestamp - poolInfo[idx].field_512 != tokenPerSecond:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                _135 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_135] = 26
                                mem[_135 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _137 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _137 + 68] = mem[idx + _135 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_137 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _137 + -mem[64] + 100
                                _148 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_148] = 26
                                mem[_148 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _172 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_172] = 26
                                    mem[_172 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _175 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _175 + 68] = mem[idx + _172 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_175 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _175 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _220 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_220] > maxReflect:
                                        endTime = block.timestamp
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _184 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_184] = 26
                                    mem[_184 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _192 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _192 + 68] = mem[idx + _184 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_192 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _192 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _236 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_236] > maxReflect:
                                        endTime = block.timestamp
                            else:
                                if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    revert with 0, 17
                                if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    revert with 0, 18
                                if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _144 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_144] = 26
                                mem[_144 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _146 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _146 + 68] = mem[idx + _144 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_146 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _146 + -mem[64] + 100
                                _156 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_156] = 26
                                mem[_156 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    _183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_183] = 26
                                    mem[_183 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _191 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _191 + 68] = mem[idx + _183 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_191 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _191 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _235 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_235] > maxReflect:
                                        endTime = block.timestamp
                                else:
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _203 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_203] = 26
                                    mem[_203 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _214 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _214 + 68] = mem[idx + _203 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_214 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _214 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _243 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_243] > maxReflect:
                                        endTime = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the dev'
    if arg1 > 5 * 10^18:
        revert with 0, 'can't be more than 5 per second'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            if not poolInfo[idx].field_1536:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if endTime > 0:
                        poolInfo[idx].field_512 = block.timestamp
                    else:
                        _132 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_132] = 30
                        mem[_132 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.timestamp:
                            _133 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _133 + 68] = mem[idx + _132 + 32]
                                idx = idx + 32
                                continue 
                            mem[_133 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _133 + -mem[64] + 100
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[idx].field_512:
                            _139 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_139] = 26
                            mem[_139 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _141 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _141 + 68] = mem[idx + _139 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_141 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _141 + -mem[64] + 100
                            _147 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_147] = 26
                            mem[_147 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _171 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_171] = 26
                                mem[_171 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    _172 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _172 + 68] = mem[idx + _171 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_172 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _172 + -mem[64] + 100
                                if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _207 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_207] > maxReflect:
                                    endTime = block.timestamp
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _181 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_181] = 26
                                mem[_181 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    _184 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _184 + 68] = mem[idx + _181 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_184 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _184 + -mem[64] + 100
                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _229 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_229] > maxReflect:
                                    endTime = block.timestamp
                        else:
                            if block.timestamp - poolInfo[idx].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 18
                            if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) / block.timestamp - poolInfo[idx].field_512 != tokenPerSecond:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                _143 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_143] = 26
                                mem[_143 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _145 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _145 + 68] = mem[idx + _143 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_145 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _145 + -mem[64] + 100
                                _156 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_156] = 26
                                mem[_156 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _180 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_180] = 26
                                    mem[_180 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _183 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _183 + 68] = mem[idx + _180 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_183 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _183 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _228 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_228] > maxReflect:
                                        endTime = block.timestamp
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _192 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_192] = 26
                                    mem[_192 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _200 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _200 + 68] = mem[idx + _192 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_200 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _200 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _244 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_244] > maxReflect:
                                        endTime = block.timestamp
                            else:
                                if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    revert with 0, 17
                                if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    revert with 0, 18
                                if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _152 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_152] = 26
                                mem[_152 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _154 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _154 + 68] = mem[idx + _152 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_154 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _154 + -mem[64] + 100
                                _164 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_164] = 26
                                mem[_164 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    _191 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_191] = 26
                                    mem[_191 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _199 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _199 + 68] = mem[idx + _191 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_199 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _199 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _243 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_243] > maxReflect:
                                        endTime = block.timestamp
                                else:
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _211 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_211] = 26
                                    mem[_211 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _222 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _222 + 68] = mem[idx + _211 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_222 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _222 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _251 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_251] > maxReflect:
                                        endTime = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    tokenPerSecond = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == arg3
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4 > 12 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.timestamp > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.timestamp
                    else:
                        if endTime > 0:
                            poolInfo[idx].field_512 = block.timestamp
                        else:
                            _180 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_180] = 30
                            mem[_180 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.timestamp:
                                _197 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _197 + 68] = mem[idx + _180 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_197 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _197 + -mem[64] + 100
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.timestamp - poolInfo[idx].field_512:
                                _203 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_203] = 26
                                mem[_203 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _205 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _205 + 68] = mem[idx + _203 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_205 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _205 + -mem[64] + 100
                                _211 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_211] = 26
                                mem[_211 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _235 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_235] = 26
                                    mem[_235 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _236 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _236 + 68] = mem[idx + _235 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_236 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _236 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _271 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_271] > maxReflect:
                                        endTime = block.timestamp
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _245 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_245] = 26
                                    mem[_245 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _248 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _248 + 68] = mem[idx + _245 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_248 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _248 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _293 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_293] > maxReflect:
                                        endTime = block.timestamp
                            else:
                                if block.timestamp - poolInfo[idx].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.timestamp - poolInfo[idx].field_512:
                                    revert with 0, 18
                                if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) / block.timestamp - poolInfo[idx].field_512 != tokenPerSecond:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    _207 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_207] = 26
                                    mem[_207 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _209 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _209 + 68] = mem[idx + _207 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_209 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _209 + -mem[64] + 100
                                    _220 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_220] = 26
                                    mem[_220 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _244 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_244] = 26
                                        mem[_244 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            _247 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _247 + 68] = mem[idx + _244 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_247 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _247 + -mem[64] + 100
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        require ext_code.size(tokenAddress)
                                        staticcall tokenAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _292 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_292] > maxReflect:
                                            endTime = block.timestamp
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _256 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_256] = 26
                                        mem[_256 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            _264 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _264 + 68] = mem[idx + _256 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_264 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _264 + -mem[64] + 100
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        require ext_code.size(tokenAddress)
                                        staticcall tokenAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _308 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_308] > maxReflect:
                                            endTime = block.timestamp
                                else:
                                    if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                        revert with 0, 18
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _216 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_216] = 26
                                    mem[_216 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _218 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _218 + 68] = mem[idx + _216 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_218 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _218 + -mem[64] + 100
                                    _228 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_228] = 26
                                    mem[_228 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        _255 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_255] = 26
                                        mem[_255 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            _263 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _263 + 68] = mem[idx + _255 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_263 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _263 + -mem[64] + 100
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        require ext_code.size(tokenAddress)
                                        staticcall tokenAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _307 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_307] > maxReflect:
                                            endTime = block.timestamp
                                    else:
                                        if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _275 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_275] = 26
                                        mem[_275 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            _286 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _286 + 68] = mem[idx + _275 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_286 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _286 + -mem[64] + 100
                                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        require ext_code.size(tokenAddress)
                                        staticcall tokenAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _315 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_315] > maxReflect:
                                            endTime = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    if arg4 > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTime:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTime
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = 3600 * arg4
    poolInfo[poolInfo.length].field_1536 = 0
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg4 > 12 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.timestamp > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.timestamp
                    else:
                        if endTime > 0:
                            poolInfo[idx].field_512 = block.timestamp
                        else:
                            _162 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_162] = 30
                            mem[_162 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.timestamp:
                                _165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _165 + 68] = mem[idx + _162 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_165 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _165 + -mem[64] + 100
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.timestamp - poolInfo[idx].field_512:
                                _176 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_176] = 26
                                mem[_176 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _178 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _178 + 68] = mem[idx + _176 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_178 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _178 + -mem[64] + 100
                                _184 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_184] = 26
                                mem[_184 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _208 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_208] = 26
                                    mem[_208 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _209 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _209 + 68] = mem[idx + _208 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_209 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _209 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _244 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_244] > maxReflect:
                                        endTime = block.timestamp
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _218 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_218] = 26
                                    mem[_218 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        _221 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _221 + 68] = mem[idx + _218 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_221 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _221 + -mem[64] + 100
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _266 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_266] > maxReflect:
                                        endTime = block.timestamp
                            else:
                                if block.timestamp - poolInfo[idx].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.timestamp - poolInfo[idx].field_512:
                                    revert with 0, 18
                                if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) / block.timestamp - poolInfo[idx].field_512 != tokenPerSecond:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    _180 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_180] = 26
                                    mem[_180 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _182 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _182 + 68] = mem[idx + _180 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_182 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _182 + -mem[64] + 100
                                    _193 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_193] = 26
                                    mem[_193 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _217 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_217] = 26
                                        mem[_217 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            _220 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _220 + 68] = mem[idx + _217 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_220 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _220 + -mem[64] + 100
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        require ext_code.size(tokenAddress)
                                        staticcall tokenAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _265 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_265] > maxReflect:
                                            endTime = block.timestamp
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _229 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_229] = 26
                                        mem[_229 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            _237 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _237 + 68] = mem[idx + _229 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_237 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _237 + -mem[64] + 100
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        require ext_code.size(tokenAddress)
                                        staticcall tokenAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _281 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_281] > maxReflect:
                                            endTime = block.timestamp
                                else:
                                    if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                        revert with 0, 18
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _189 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_189] = 26
                                    mem[_189 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _191 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _191 + 68] = mem[idx + _189 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_191 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _191 + -mem[64] + 100
                                    _201 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_201] = 26
                                    mem[_201 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        _228 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_228] = 26
                                        mem[_228 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            _236 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _236 + 68] = mem[idx + _228 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_236 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _236 + -mem[64] + 100
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1536):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        require ext_code.size(tokenAddress)
                                        staticcall tokenAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _280 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_280] > maxReflect:
                                            endTime = block.timestamp
                                    else:
                                        if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _248 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_248] = 26
                                        mem[_248 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            _259 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _259 + 68] = mem[idx + _248 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_259 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _259 + -mem[64] + 100
                                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        require ext_code.size(tokenAddress)
                                        staticcall tokenAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _288 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_288] > maxReflect:
                                            endTime = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    if arg4 > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_1280 = 3600 * arg4
}

function pendingToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not poolInfo[arg1].field_1536:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if endTime > 0:
        if poolInfo[arg1].field_512 > endTime:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1536:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if endTime < poolInfo[arg1].field_512:
            revert with 0, 17
        if not endTime - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1536:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if endTime - poolInfo[arg1].field_512 and tokenPerSecond > -1 / endTime - poolInfo[arg1].field_512:
            revert with 0, 17
        if not endTime - poolInfo[arg1].field_512:
            revert with 0, 18
        if (endTime * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) / endTime - poolInfo[arg1].field_512 != tokenPerSecond:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (endTime * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1536:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if (endTime * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) and poolInfo[arg1].field_256 > -1 / (endTime * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
            revert with 0, 17
        if not (endTime * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
            revert with 0, 18
        if (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / (endTime * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endTime * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if block.timestamp - poolInfo[arg1].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 18
    if (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) / block.timestamp - poolInfo[arg1].field_512 != tokenPerSecond:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
        revert with 0, 17
    if not (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
        revert with 0, 18
    if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero', 0
    if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1536):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1536):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 18
    if 10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not poolInfo[arg1].field_1536:
        revert with 0, 'SafeMath: division by zero', 0
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
        revert with 0, 17
    if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}



}
