contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_ecefdc1b(?) = block.timestamp

const BONUS_MULTIPLIER = 1


address owner;
address tokenAddress;
uint256 tokenPerSecond;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint16 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function tokenPerSecond() payable {
    return tokenPerSecond
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function token() payable {
    return tokenAddress
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < arg1:
        revert with 0, 17
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 and 1 > -1 / arg2 - arg1:
        revert with 0, 17
    if not arg2 - arg1:
        revert with 0, 18
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg2 - arg1)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < poolInfo[arg1].field_512:
                    revert with 0, 17
                if not block.timestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        revert with 0, 18
                    if not 0 / totalAllocPoint:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args feeAddress, 0
                    else:
                        if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not 0 / totalAllocPoint:
                            revert with 0, 18
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args feeAddress, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not 0 / totalAllocPoint:
                            revert with 0, 18
                        if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp - poolInfo[arg1].field_512 and 1 > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if not block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 18
                    if block.timestamp - poolInfo[arg1].field_512 / block.timestamp - poolInfo[arg1].field_512 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not block.timestamp - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 0, 18
                        if not 0 / totalAllocPoint:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 0
                        else:
                            if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.timestamp - poolInfo[arg1].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[arg1].field_512:
                            revert with 0, 18
                        if (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) / block.timestamp - poolInfo[arg1].field_512 != tokenPerSecond:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if not 0 / totalAllocPoint:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 15 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
                                revert with 0, 17
                            if not (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
                                revert with 0, 18
                            if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 15 > -1 / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 18
                                if 15 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 15 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 100 * 10^6 > -1 / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 18
                                if 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 100 * 10^6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _146 = mem[_145]
            if mem[_145]:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 0, 18
                        if not 0 / totalAllocPoint:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 0
                        else:
                            if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if _146 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not _146:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(0 / _146):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (0 / _146) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / _146
                        else:
                            if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _146 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not _146:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _146):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _146) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _146
                    else:
                        if block.timestamp - poolInfo[idx].field_512 and 1 > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 18
                        if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if not 0 / totalAllocPoint:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 15 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _146 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _146:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(0 / _146):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / _146) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _146
                            else:
                                if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _146 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _146:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _146):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _146) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _146
                        else:
                            if block.timestamp - poolInfo[idx].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 18
                            if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) / block.timestamp - poolInfo[idx].field_512 != tokenPerSecond:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 15 * 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _146 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _146:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / _146):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / _146) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _146
                                else:
                                    if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _146 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _146:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _146):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _146) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _146
                            else:
                                if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    revert with 0, 17
                                if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    revert with 0, 18
                                if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 15 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 15 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 15:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 15 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    if _146 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _146:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / _146):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / _146) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _146
                                else:
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 100 * 10^6 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 100 * 10^6:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _146 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _146:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _146):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _146) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _146
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _148 = mem[_147]
            if mem[_147]:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 0, 18
                        if not 0 / totalAllocPoint:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 0
                        else:
                            if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if _148 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not _148:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(0 / _148):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (0 / _148) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / _148
                        else:
                            if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _148 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not _148:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _148):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _148) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _148
                    else:
                        if block.timestamp - poolInfo[idx].field_512 and 1 > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 18
                        if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if not 0 / totalAllocPoint:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 15 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _148 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _148:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(0 / _148):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / _148) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _148
                            else:
                                if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _148 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _148:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _148):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _148) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _148
                        else:
                            if block.timestamp - poolInfo[idx].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 18
                            if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) / block.timestamp - poolInfo[idx].field_512 != tokenPerSecond:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 15 * 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _148 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _148:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / _148):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / _148) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _148
                                else:
                                    if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _148 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _148:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _148):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _148) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _148
                            else:
                                if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    revert with 0, 17
                                if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    revert with 0, 18
                                if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 15 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 15 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 15:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 15 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    if _148 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _148:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / _148):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / _148) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _148
                                else:
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 100 * 10^6 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 100 * 10^6:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _148 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _148:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _148):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _148) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _148
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    tokenPerSecond = arg1
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _182 = mem[_181]
                if mem[_181]:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if not 0 / totalAllocPoint:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 15 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _182 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _182:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(0 / _182):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / _182) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _182
                            else:
                                if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _182 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _182:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _182):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _182) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _182
                        else:
                            if block.timestamp - poolInfo[idx].field_512 and 1 > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 18
                            if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not block.timestamp - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 15 * 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _182 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _182:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / _182):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / _182) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _182
                                else:
                                    if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _182 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _182:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _182):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _182) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _182
                            else:
                                if block.timestamp - poolInfo[idx].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.timestamp - poolInfo[idx].field_512:
                                    revert with 0, 18
                                if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) / block.timestamp - poolInfo[idx].field_512 != tokenPerSecond:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 0
                                    else:
                                        if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 15 * 0 / totalAllocPoint / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _182 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _182:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _182):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _182) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _182
                                    else:
                                        if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _182 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _182:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _182):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _182) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _182
                                else:
                                    if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                        revert with 0, 18
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 0
                                    else:
                                        if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 15 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 18
                                        if 15 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 15:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 15 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        if _182 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _182:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _182):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _182) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _182
                                    else:
                                        if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 100 * 10^6 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 18
                                        if 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 100 * 10^6:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _182 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _182:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _182):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _182) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _182
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor8A35[stor4.length] = arg1
    if block.timestamp > startTime:
        stor8A35[stor4.length] = block.timestamp
    else:
        stor8A35[stor4.length] = startTime
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = arg3
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _167 = mem[_166]
                if mem[_166]:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if not 0 / totalAllocPoint:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 15 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _167 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _167:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(0 / _167):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / _167) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _167
                            else:
                                if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _167 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _167:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _167):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _167) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _167
                        else:
                            if block.timestamp - poolInfo[idx].field_512 and 1 > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 18
                            if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not block.timestamp - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 15 * 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _167 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _167:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / _167):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / _167) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _167
                                else:
                                    if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _167 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _167:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _167):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _167) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _167
                            else:
                                if block.timestamp - poolInfo[idx].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.timestamp - poolInfo[idx].field_512:
                                    revert with 0, 18
                                if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) / block.timestamp - poolInfo[idx].field_512 != tokenPerSecond:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 0
                                    else:
                                        if 0 / totalAllocPoint and 15 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 15 * 0 / totalAllocPoint / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _167 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _167:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _167):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _167) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _167
                                    else:
                                        if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _167 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _167:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / _167):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (100 * 10^6 * 0 / totalAllocPoint / _167) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 100 * 10^6 * 0 / totalAllocPoint / _167
                                else:
                                    if (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                        revert with 0, 17
                                    if not (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond):
                                        revert with 0, 18
                                    if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[idx].field_512 * tokenPerSecond) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 0
                                    else:
                                        if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 15 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 18
                                        if 15 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 15:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 15 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        if _167 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _167:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _167):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _167) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _167
                                    else:
                                        if (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 100 * 10^6 > -1 / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        if not (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 18
                                        if 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 100 * 10^6:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _167 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _167:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _167):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _167) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _167
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
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
}

function pendingToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 100 * 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 100 * 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp - poolInfo[arg1].field_512 and 1 > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 18
    if block.timestamp - poolInfo[arg1].field_512 / block.timestamp - poolInfo[arg1].field_512 != 1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp - poolInfo[arg1].field_512 and tokenPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 18
    if (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) / block.timestamp - poolInfo[arg1].field_512 != tokenPerSecond:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 100 * 10^6 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 100 * 10^6 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100 * 10^6:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
        revert with 0, 17
    if not (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond):
        revert with 0, 18
    if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / (block.timestamp * tokenPerSecond) - (poolInfo[arg1].field_512 * tokenPerSecond) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not totalAllocPoint:
        revert with 0, 18
    if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 100 * 10^6 > -1 / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 18
    if 100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 100 * 10^6:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if poolInfo[arg1].field_768 + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return -userInfo[arg1][address(arg2)].field_256
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6:
        revert with 0, 'SafeMath: subtraction overflow'
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (100 * 10^6 * (block.timestamp * tokenPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 100 * 10^6) - userInfo[arg1][address(arg2)].field_256)
}



}
