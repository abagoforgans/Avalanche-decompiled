contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address wolfAddress;
address devAddr;
uint256 wolfPerSec;
uint256 devPercent;
array of struct poolInfo;
array of struct stor6;
mapping of uint256 stor7;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function wolf() payable {
    return wolfAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function devAddr() payable {
    return devAddr
}

function wolfPerSec() payable {
    return wolfPerSec
}

function startTimestamp() payable {
    return startTimestamp
}

function devPercent() payable {
    return devPercent
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

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddr != msg.sender:
        revert with 0, 'dev: wut?'
    devAddr = arg1
    emit SetDevAddress(msg.sender, arg1);
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

function setDevPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setDevPercent: invalid percent value'
    if arg1 > 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setDevPercent: invalid percent value'
    devPercent = arg1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
        else:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    require ext_code.size(wolfAddress)
                    call wolfAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0
                else:
                    require 0 / totalAllocPoint
                    if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(wolfAddress)
                    call wolfAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint * devPercent / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(wolfAddress)
                    call wolfAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                else:
                    require 0 / totalAllocPoint
                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(wolfAddress)
                    call wolfAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not 0 / ext_call.return_data[0]:
                        if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require 0 / ext_call.return_data[0]
                        if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfo[arg1].field_768 + ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 1000
                else:
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]:
                        if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        if (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 10^12 * 0 / totalAllocPoint / ext_call.return_data[0] != -devPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfo[arg1].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000
            else:
                require block.timestamp - poolInfo[arg1].field_512
                if (block.timestamp * wolfPerSec) - (poolInfo[arg1].field_512 * wolfPerSec) / block.timestamp - poolInfo[arg1].field_512 != wolfPerSec:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * wolfPerSec) - (poolInfo[arg1].field_512 * wolfPerSec):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require 0 / totalAllocPoint
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 0 / ext_call.return_data[0]
                            if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_768 + ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 1000
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            if (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 10^12 * 0 / totalAllocPoint / ext_call.return_data[0] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000
                else:
                    require (block.timestamp * wolfPerSec) - (poolInfo[arg1].field_512 * wolfPerSec)
                    if (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / (block.timestamp * wolfPerSec) - (poolInfo[arg1].field_512 * wolfPerSec) != poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint * devPercent / (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint != -devPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 0 / ext_call.return_data[0]
                            if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_768 + ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) / 1000
                    else:
                        require (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            if (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_768 + ((1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000
            poolInfo[arg1].field_512 = block.timestamp
            emit UpdatePool(poolInfo[arg1].field_512, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _388 = mem[_387]
            require mem[_387] == mem[_387]
            if not mem[_387]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if poolInfo[idx].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require 0 / totalAllocPoint
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if mem[_387] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_387]
                        if not 0 / mem[_387]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 0 / mem[_387]
                            if (1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 0 / mem[_387] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 1000
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_387] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_387]
                        if not 10^12 * 0 / totalAllocPoint / mem[_387]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * 0 / totalAllocPoint / mem[_387]
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_387]) / 10^12 * 0 / totalAllocPoint / mem[_387] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_387]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_387]) / 1000
                else:
                    require block.timestamp - poolInfo[idx].field_512
                    if (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec) / block.timestamp - poolInfo[idx].field_512 != wolfPerSec:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_387] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_387]
                            if not 0 / mem[_387]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_387]
                                if (1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 0 / mem[_387] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_387] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_387]
                            if not 10^12 * 0 / totalAllocPoint / mem[_387]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_387]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_387]) / 10^12 * 0 / totalAllocPoint / mem[_387] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_387]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_387]) / 1000
                    else:
                        require (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec)
                        if (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (1000 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_387] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_387]
                            if not 0 / mem[_387]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_387]
                                if (1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 0 / mem[_387] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_387]) - (devPercent * 0 / mem[_387]) / 1000
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_387] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_387]
                            if not 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387]
                                if (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387]) / 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_387]) / 1000
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = poolInfo[idx].field_512
                mem[mem[64] + 32] = _388
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(poolInfo[idx].field_512, _388, poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _394 = mem[_393]
            require mem[_393] == mem[_393]
            if not mem[_393]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if poolInfo[idx].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require 0 / totalAllocPoint
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if mem[_393] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_393]
                        if not 0 / mem[_393]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 0 / mem[_393]
                            if (1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 0 / mem[_393] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 1000
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_393] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_393]
                        if not 10^12 * 0 / totalAllocPoint / mem[_393]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * 0 / totalAllocPoint / mem[_393]
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_393]) / 10^12 * 0 / totalAllocPoint / mem[_393] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_393]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_393]) / 1000
                else:
                    require block.timestamp - poolInfo[idx].field_512
                    if (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec) / block.timestamp - poolInfo[idx].field_512 != wolfPerSec:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_393] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_393]
                            if not 0 / mem[_393]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_393]
                                if (1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 0 / mem[_393] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_393] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_393]
                            if not 10^12 * 0 / totalAllocPoint / mem[_393]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_393]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_393]) / 10^12 * 0 / totalAllocPoint / mem[_393] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_393]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_393]) / 1000
                    else:
                        require (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec)
                        if (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (1000 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_393] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_393]
                            if not 0 / mem[_393]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_393]
                                if (1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 0 / mem[_393] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_393]) - (devPercent * 0 / mem[_393]) / 1000
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_393] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_393]
                            if not 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393]
                                if (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393]) / 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_393]) / 1000
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = poolInfo[idx].field_512
                mem[mem[64] + 32] = _394
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(poolInfo[idx].field_512, _394, poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
    wolfPerSec = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _406 = mem[_404]
            require mem[_404] == mem[_404]
            if not mem[_404]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if poolInfo[idx].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require 0 / totalAllocPoint
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if mem[_404] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_404]
                        if not 0 / mem[_404]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 0 / mem[_404]
                            if (1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 0 / mem[_404] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 1000
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_404] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_404]
                        if not 10^12 * 0 / totalAllocPoint / mem[_404]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * 0 / totalAllocPoint / mem[_404]
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_404]) / 10^12 * 0 / totalAllocPoint / mem[_404] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_404]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_404]) / 1000
                else:
                    require block.timestamp - poolInfo[idx].field_512
                    if (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec) / block.timestamp - poolInfo[idx].field_512 != wolfPerSec:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_404] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_404]
                            if not 0 / mem[_404]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_404]
                                if (1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 0 / mem[_404] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_404] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_404]
                            if not 10^12 * 0 / totalAllocPoint / mem[_404]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_404]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_404]) / 10^12 * 0 / totalAllocPoint / mem[_404] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_404]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_404]) / 1000
                    else:
                        require (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec)
                        if (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (1000 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_404] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_404]
                            if not 0 / mem[_404]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_404]
                                if (1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 0 / mem[_404] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_404]) - (devPercent * 0 / mem[_404]) / 1000
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_404] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_404]
                            if not 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404]
                                if (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404]) / 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_404]) / 1000
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = poolInfo[idx].field_512
                mem[mem[64] + 32] = _406
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(poolInfo[idx].field_512, _406, poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    emit Set(arg2, arg1);
}

function add(uint256 arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg2) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: LP token must be a valid contract'
    mem[0] = arg2
    mem[32] = 7
    if stor7[address(arg2)]:
        revert with 0, 'add: LP already added'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _459 = mem[_454]
            require mem[_454] == mem[_454]
            if not mem[_454]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if poolInfo[idx].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require 0 / totalAllocPoint
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(wolfAddress)
                        call wolfAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if mem[_454] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_454]
                        if not 0 / mem[_454]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 0 / mem[_454]
                            if (1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 0 / mem[_454] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 1000
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_454] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_454]
                        if not 10^12 * 0 / totalAllocPoint / mem[_454]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * 0 / totalAllocPoint / mem[_454]
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_454]) / 10^12 * 0 / totalAllocPoint / mem[_454] != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_454]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_454]) / 1000
                else:
                    require block.timestamp - poolInfo[idx].field_512
                    if (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec) / block.timestamp - poolInfo[idx].field_512 != wolfPerSec:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_454] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_454]
                            if not 0 / mem[_454]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_454]
                                if (1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 0 / mem[_454] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_454] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_454]
                            if not 10^12 * 0 / totalAllocPoint / mem[_454]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_454]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_454]) / 10^12 * 0 / totalAllocPoint / mem[_454] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_454]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_454]) / 1000
                    else:
                        require (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec)
                        if (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / (block.timestamp * wolfPerSec) - (poolInfo[idx].field_512 * wolfPerSec) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (1000 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(wolfAddress)
                            call wolfAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_454] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_454]
                            if not 0 / mem[_454]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_454]
                                if (1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 0 / mem[_454] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_454]) - (devPercent * 0 / mem[_454]) / 1000
                        else:
                            require (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_454] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_454]
                            if not 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454]
                                if (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454]) / 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454] != -devPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454]) - (devPercent * 10^12 * (block.timestamp * wolfPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * wolfPerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_454]) / 1000
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = poolInfo[idx].field_512
                mem[mem[64] + 32] = _459
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(poolInfo[idx].field_512, _459, poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTimestamp:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTimestamp
    poolInfo[poolInfo.length].field_768 = 0
    if not stor7[address(arg2)]:
        stor6.length++
        stor6[stor6.length].field_0 = arg2
        stor6[stor6.length].field_160 = 0
        stor7[address(arg2)] = stor6.length
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0x84461c1f: arg1, poolInfo.length - 1, arg2
}

function pendingTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
        if 10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.timestamp - poolInfo[arg1].field_512
    if (block.timestamp * wolfPerSec) - (poolInfo[arg1].field_512 * wolfPerSec) / block.timestamp - poolInfo[arg1].field_512 != wolfPerSec:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * wolfPerSec) - (poolInfo[arg1].field_512 * wolfPerSec):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000
        if 10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.timestamp * wolfPerSec) - (poolInfo[arg1].field_512 * wolfPerSec)
    if (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / (block.timestamp * wolfPerSec) - (poolInfo[arg1].field_512 * wolfPerSec) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint
    if (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint != -devPercent + 1000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000
    if 10^12 * (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * wolfPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * wolfPerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}



}
