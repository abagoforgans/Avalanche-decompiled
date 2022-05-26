contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#  - pendingTokens(uint256 arg1, address arg2)
#
address owner;
address sub_d10fc104Address;
address devAddr;
address treasuryAddr;
address investorAddr;
uint256 sub_753f1b98;
uint256 devPercent;
uint256 treasuryPercent;
uint256 investorPercent;
array of struct poolInfo;
array of struct stor11;
mapping of uint256 stor12;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726057;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726059;
array of address stor89717814153306320011181716697424560163256864414616650038987186496166826726060;

function treasuryPercent() payable {
    return treasuryPercent
}

function investorPercent() payable {
    return investorPercent
}

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

function treasuryAddr() payable {
    return treasuryAddr
}

function sub_753f1b98(?) payable {
    return sub_753f1b98
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function investorAddr() payable {
    return investorAddr
}

function sub_d10fc104(?) payable {
    return sub_d10fc104Address
}

function devAddr() payable {
    return devAddr
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

function setInvestorAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if investorAddr != msg.sender:
        revert with 0, 'setInvestorAddr: intruder alert'
    investorAddr = arg1
}

function setTreasuryAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddr != msg.sender:
        revert with 0, 'setTreasuryAddr: intruder alert'
    treasuryAddr = arg1
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddr != msg.sender:
        revert with 0, 'dev: intruder alert'
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require arg1 < poolInfo.length
            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
            poolInfo[arg1].field_512 = block.timestamp
            poolInfo[arg1].field_768 = poolInfo[arg1].field_768
            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
        else:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    require ext_code.size(sub_d10fc104Address)
                    call sub_d10fc104Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0
                else:
                    if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_d10fc104Address)
                    call sub_d10fc104Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, devPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(sub_d10fc104Address)
                    call sub_d10fc104Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddr, 0
                else:
                    if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_d10fc104Address)
                    call sub_d10fc104Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(sub_d10fc104Address)
                    call sub_d10fc104Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args investorAddr, 0
                else:
                    if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_d10fc104Address)
                    call sub_d10fc104Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(sub_d10fc104Address)
                    call sub_d10fc104Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                else:
                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_d10fc104Address)
                    call sub_d10fc104Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not 0 / ext_call.return_data[0]:
                        if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        require arg1 < poolInfo.length
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 = poolInfo[arg1].field_768
                        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                    else:
                        if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        require arg1 < poolInfo.length
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
                        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]:
                        if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        require arg1 < poolInfo.length
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 = poolInfo[arg1].field_768
                        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                    else:
                        if (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 10^12 * 0 / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        require arg1 < poolInfo.length
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000
                        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
            else:
                if (block.timestamp * sub_753f1b98) - (poolInfo[arg1].field_512 * sub_753f1b98) / block.timestamp - poolInfo[arg1].field_512 != sub_753f1b98:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_753f1b98) - (poolInfo[arg1].field_512 * sub_753f1b98):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, devPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                            poolInfo[arg1].field_512 = block.timestamp
                            poolInfo[arg1].field_768 = poolInfo[arg1].field_768
                            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                            poolInfo[arg1].field_512 = block.timestamp
                            poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                            poolInfo[arg1].field_512 = block.timestamp
                            poolInfo[arg1].field_768 = poolInfo[arg1].field_768
                            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 10^12 * 0 / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                            poolInfo[arg1].field_512 = block.timestamp
                            poolInfo[arg1].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
                else:
                    if (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / (block.timestamp * sub_753f1b98) - (poolInfo[arg1].field_512 * sub_753f1b98) != poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, devPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint) / (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                            poolInfo[arg1].field_512 = block.timestamp
                            poolInfo[arg1].field_768 = poolInfo[arg1].field_768
                            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                            poolInfo[arg1].field_512 = block.timestamp
                            poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                            poolInfo[arg1].field_512 = block.timestamp
                            poolInfo[arg1].field_768 = poolInfo[arg1].field_768
                            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                            poolInfo[arg1].field_512 = block.timestamp
                            poolInfo[arg1].field_768 += (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_753f1b98 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        _3279 = mem[64]
        mem[64] = mem[64] + 160
        mem[_3279] = 0
        mem[_3279 + 32] = 0
        mem[_3279 + 64] = 0
        mem[_3279 + 96] = 0
        mem[_3279 + 128] = 0
        mem[0] = 10
        _3281 = mem[64]
        mem[64] = mem[64] + 160
        mem[_3281] = poolInfo[idx].field_0
        mem[_3281 + 32] = poolInfo[idx].field_256
        mem[_3281 + 64] = poolInfo[idx].field_512
        mem[_3281 + 96] = poolInfo[idx].field_768
        mem[_3281 + 128] = poolInfo[idx].field_1024
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3286 = mem[_3285]
            if not mem[_3285]:
                mem[_3281 + 64] = block.timestamp
                require idx < poolInfo.length
                mem[0] = 10
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = poolInfo[idx].field_256
                poolInfo[idx].field_512 = block.timestamp
                poolInfo[idx].field_768 = poolInfo[idx].field_768
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _3286
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(block.timestamp, _3286, poolInfo[idx].field_768, idx);
            else:
                if poolInfo[idx].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, devPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_d10fc104Address)
                        call sub_d10fc104Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if mem[_3285] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_3285]
                        if not 0 / mem[_3285]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_3281 + 96] = poolInfo[idx].field_768
                            mem[_3281 + 64] = block.timestamp
                            require idx < poolInfo.length
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 = poolInfo[idx].field_768
                            poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _3286
                            mem[mem[64] + 64] = poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _3286, poolInfo[idx].field_768, idx);
                        else:
                            if (1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 0 / mem[_3285] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_3281 + 96] = ((1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 1000) + poolInfo[idx].field_768
                            mem[_3281 + 64] = block.timestamp
                            require idx < poolInfo.length
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += (1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000
                            poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _3286
                            mem[mem[64] + 64] = ((1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _3286, ((1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_3285] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_3285]
                        if not 10^12 * 0 / totalAllocPoint / mem[_3285]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_3281 + 96] = poolInfo[idx].field_768
                            mem[_3281 + 64] = block.timestamp
                            require idx < poolInfo.length
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 = poolInfo[idx].field_768
                            poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _3286
                            mem[mem[64] + 64] = poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _3286, poolInfo[idx].field_768, idx);
                        else:
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) / 10^12 * 0 / totalAllocPoint / mem[_3285] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_3281 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) / 1000) + poolInfo[idx].field_768
                            mem[_3281 + 64] = block.timestamp
                            require idx < poolInfo.length
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _3286) - (devPercent * 10^12 * 0 / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3286) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3286) / 1000
                            poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _3286
                            mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3286) - (devPercent * 10^12 * 0 / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3286) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3286) / 1000) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _3286, ((1000 * 10^12 * 0 / totalAllocPoint / _3286) - (devPercent * 10^12 * 0 / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3286) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3286) / 1000) + poolInfo[idx].field_768, idx);
                else:
                    if (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) / block.timestamp - poolInfo[idx].field_512 != sub_753f1b98:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_3285] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3285]
                            if not 0 / mem[_3285]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_3281 + 96] = poolInfo[idx].field_768
                                mem[_3281 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = poolInfo[idx].field_768
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3286
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3286, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 0 / mem[_3285] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_3281 + 96] = ((1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 1000) + poolInfo[idx].field_768
                                mem[_3281 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3286
                                mem[mem[64] + 64] = ((1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3286, ((1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_3285] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3285]
                            if not 10^12 * 0 / totalAllocPoint / mem[_3285]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_3281 + 96] = poolInfo[idx].field_768
                                mem[_3281 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = poolInfo[idx].field_768
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3286
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3286, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) / 10^12 * 0 / totalAllocPoint / mem[_3285] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_3281 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3285]) / 1000) + poolInfo[idx].field_768
                                mem[_3281 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _3286) - (devPercent * 10^12 * 0 / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3286) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3286) / 1000
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3286
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3286) - (devPercent * 10^12 * 0 / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3286) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3286) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3286, ((1000 * 10^12 * 0 / totalAllocPoint / _3286) - (devPercent * 10^12 * 0 / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3286) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3286) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_3285] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3285]
                            if not 0 / mem[_3285]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_3281 + 96] = poolInfo[idx].field_768
                                mem[_3281 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = poolInfo[idx].field_768
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3286
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3286, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 0 / mem[_3285] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_3281 + 96] = ((1000 * 0 / mem[_3285]) - (devPercent * 0 / mem[_3285]) - (treasuryPercent * 0 / mem[_3285]) - (investorPercent * 0 / mem[_3285]) / 1000) + poolInfo[idx].field_768
                                mem[_3281 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3286
                                mem[mem[64] + 64] = ((1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3286, ((1000 * 0 / _3286) - (devPercent * 0 / _3286) - (treasuryPercent * 0 / _3286) - (investorPercent * 0 / _3286) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_3285] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3285]
                            if not 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_3281 + 96] = poolInfo[idx].field_768
                                mem[_3281 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = poolInfo[idx].field_768
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3286
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3286, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) / 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_3281 + 96] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3285]) / 1000) + poolInfo[idx].field_768
                                mem[_3281 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) / 1000
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3286
                                mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3286, ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _3286) / 1000) + poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, address arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg3):
        idx = 0
        while idx < poolInfo.length:
            _6624 = mem[64]
            mem[64] = mem[64] + 160
            mem[_6624] = 0
            mem[_6624 + 32] = 0
            mem[_6624 + 64] = 0
            mem[_6624 + 96] = 0
            mem[_6624 + 128] = 0
            mem[0] = 10
            _6630 = mem[64]
            mem[64] = mem[64] + 160
            mem[_6630] = poolInfo[idx].field_0
            mem[_6630 + 32] = poolInfo[idx].field_256
            mem[_6630 + 64] = poolInfo[idx].field_512
            mem[_6630 + 96] = poolInfo[idx].field_768
            mem[_6630 + 128] = poolInfo[idx].field_1024
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6646 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6650 = mem[_6646]
                if not mem[_6646]:
                    mem[_6630 + 64] = block.timestamp
                    require idx < poolInfo.length
                    mem[0] = 10
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _6650
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _6650, poolInfo[idx].field_768, idx);
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_6646] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6646]
                            if not 0 / mem[_6646]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_6630 + 96] = poolInfo[idx].field_768
                                mem[_6630 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = poolInfo[idx].field_768
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6650
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6650, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 0 / mem[_6646] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_6630 + 96] = ((1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 1000) + poolInfo[idx].field_768
                                mem[_6630 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6650
                                mem[mem[64] + 64] = ((1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6650, ((1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6646] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6646]
                            if not 10^12 * 0 / totalAllocPoint / mem[_6646]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_6630 + 96] = poolInfo[idx].field_768
                                mem[_6630 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = poolInfo[idx].field_768
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6650
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6650, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) / 10^12 * 0 / totalAllocPoint / mem[_6646] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_6630 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) / 1000) + poolInfo[idx].field_768
                                mem[_6630 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _6650) - (devPercent * 10^12 * 0 / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6650) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6650) / 1000
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6650
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6650) - (devPercent * 10^12 * 0 / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6650) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6650) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6650, ((1000 * 10^12 * 0 / totalAllocPoint / _6650) - (devPercent * 10^12 * 0 / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6650) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6650) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) / block.timestamp - poolInfo[idx].field_512 != sub_753f1b98:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_6646] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6646]
                                if not 0 / mem[_6646]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6630 + 96] = poolInfo[idx].field_768
                                    mem[_6630 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6650
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6650, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 0 / mem[_6646] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6630 + 96] = ((1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 1000) + poolInfo[idx].field_768
                                    mem[_6630 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6650
                                    mem[mem[64] + 64] = ((1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6650, ((1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6646] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6646]
                                if not 10^12 * 0 / totalAllocPoint / mem[_6646]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6630 + 96] = poolInfo[idx].field_768
                                    mem[_6630 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6650
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6650, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) / 10^12 * 0 / totalAllocPoint / mem[_6646] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6630 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6646]) / 1000) + poolInfo[idx].field_768
                                    mem[_6630 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _6650) - (devPercent * 10^12 * 0 / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6650) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6650) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6650
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6650) - (devPercent * 10^12 * 0 / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6650) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6650) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6650, ((1000 * 10^12 * 0 / totalAllocPoint / _6650) - (devPercent * 10^12 * 0 / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6650) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6650) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_6646] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6646]
                                if not 0 / mem[_6646]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6630 + 96] = poolInfo[idx].field_768
                                    mem[_6630 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6650
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6650, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 0 / mem[_6646] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6630 + 96] = ((1000 * 0 / mem[_6646]) - (devPercent * 0 / mem[_6646]) - (treasuryPercent * 0 / mem[_6646]) - (investorPercent * 0 / mem[_6646]) / 1000) + poolInfo[idx].field_768
                                    mem[_6630 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6650
                                    mem[mem[64] + 64] = ((1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6650, ((1000 * 0 / _6650) - (devPercent * 0 / _6650) - (treasuryPercent * 0 / _6650) - (investorPercent * 0 / _6650) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6646] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6646]
                                if not 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6630 + 96] = poolInfo[idx].field_768
                                    mem[_6630 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6650
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6650, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) / 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6630 + 96] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6646]) / 1000) + poolInfo[idx].field_768
                                    mem[_6630 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6650
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6650, ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6650) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: rewarder must be contract or zero'
        idx = 0
        while idx < poolInfo.length:
            _6626 = mem[64]
            mem[64] = mem[64] + 160
            mem[_6626] = 0
            mem[_6626 + 32] = 0
            mem[_6626 + 64] = 0
            mem[_6626 + 96] = 0
            mem[_6626 + 128] = 0
            mem[0] = 10
            _6634 = mem[64]
            mem[64] = mem[64] + 160
            mem[_6634] = poolInfo[idx].field_0
            mem[_6634 + 32] = poolInfo[idx].field_256
            mem[_6634 + 64] = poolInfo[idx].field_512
            mem[_6634 + 96] = poolInfo[idx].field_768
            mem[_6634 + 128] = poolInfo[idx].field_1024
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6652 = mem[_6648]
                if not mem[_6648]:
                    mem[_6634 + 64] = block.timestamp
                    require idx < poolInfo.length
                    mem[0] = 10
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _6652
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _6652, poolInfo[idx].field_768, idx);
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(sub_d10fc104Address)
                            call sub_d10fc104Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_6648] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6648]
                            if not 0 / mem[_6648]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_6634 + 96] = poolInfo[idx].field_768
                                mem[_6634 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = poolInfo[idx].field_768
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6652
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6652, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 0 / mem[_6648] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_6634 + 96] = ((1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 1000) + poolInfo[idx].field_768
                                mem[_6634 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6652
                                mem[mem[64] + 64] = ((1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6652, ((1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6648] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6648]
                            if not 10^12 * 0 / totalAllocPoint / mem[_6648]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_6634 + 96] = poolInfo[idx].field_768
                                mem[_6634 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = poolInfo[idx].field_768
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6652
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6652, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) / 10^12 * 0 / totalAllocPoint / mem[_6648] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_6634 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) / 1000) + poolInfo[idx].field_768
                                mem[_6634 + 64] = block.timestamp
                                require idx < poolInfo.length
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _6652) - (devPercent * 10^12 * 0 / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6652) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6652) / 1000
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6652
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6652) - (devPercent * 10^12 * 0 / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6652) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6652) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6652, ((1000 * 10^12 * 0 / totalAllocPoint / _6652) - (devPercent * 10^12 * 0 / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6652) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6652) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) / block.timestamp - poolInfo[idx].field_512 != sub_753f1b98:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_6648] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6648]
                                if not 0 / mem[_6648]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6634 + 96] = poolInfo[idx].field_768
                                    mem[_6634 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6652
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6652, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 0 / mem[_6648] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6634 + 96] = ((1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 1000) + poolInfo[idx].field_768
                                    mem[_6634 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6652
                                    mem[mem[64] + 64] = ((1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6652, ((1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6648] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6648]
                                if not 10^12 * 0 / totalAllocPoint / mem[_6648]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6634 + 96] = poolInfo[idx].field_768
                                    mem[_6634 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6652
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6652, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) / 10^12 * 0 / totalAllocPoint / mem[_6648] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6634 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6648]) / 1000) + poolInfo[idx].field_768
                                    mem[_6634 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _6652) - (devPercent * 10^12 * 0 / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6652) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6652) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6652
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6652) - (devPercent * 10^12 * 0 / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6652) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6652) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6652, ((1000 * 10^12 * 0 / totalAllocPoint / _6652) - (devPercent * 10^12 * 0 / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6652) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6652) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_6648] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6648]
                                if not 0 / mem[_6648]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6634 + 96] = poolInfo[idx].field_768
                                    mem[_6634 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6652
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6652, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 0 / mem[_6648] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6634 + 96] = ((1000 * 0 / mem[_6648]) - (devPercent * 0 / mem[_6648]) - (treasuryPercent * 0 / mem[_6648]) - (investorPercent * 0 / mem[_6648]) / 1000) + poolInfo[idx].field_768
                                    mem[_6634 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6652
                                    mem[mem[64] + 64] = ((1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6652, ((1000 * 0 / _6652) - (devPercent * 0 / _6652) - (treasuryPercent * 0 / _6652) - (investorPercent * 0 / _6652) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6648] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6648]
                                if not 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6634 + 96] = poolInfo[idx].field_768
                                    mem[_6634 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6652
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6652, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) / 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_6634 + 96] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_6648]) / 1000) + poolInfo[idx].field_768
                                    mem[_6634 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6652
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6652, ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _6652) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    if not arg4:
        require arg1 < poolInfo.length
        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
        poolInfo[arg1].field_256 = arg2
        poolInfo[arg1].field_512 = poolInfo[arg1].field_512
        poolInfo[arg1].field_768 = poolInfo[arg1].field_768
        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
        if arg4:
            emit 0xa54644aa: arg2, arg4, arg1, arg3
        else:
            emit 0xa54644aa: arg2, arg4, arg1, poolInfo[arg1].field_1024
    else:
        require ext_code.size(arg3)
        call arg3.0x88331ad9 with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 < poolInfo.length
        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
        poolInfo[arg1].field_256 = arg2
        poolInfo[arg1].field_512 = poolInfo[arg1].field_512
        poolInfo[arg1].field_768 = poolInfo[arg1].field_768
        poolInfo[arg1].field_1024 = arg3
        emit 0xa54644aa: arg2, arg4, arg1, arg3
}

function add(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg3):
        mem[0] = arg2
        mem[32] = 12
        if stor12[address(arg2)]:
            revert with 0, 'add: LP already added'
        mem[100] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if not arg3:
            idx = 0
            while idx < poolInfo.length:
                _13287 = mem[64]
                mem[64] = mem[64] + 160
                mem[_13287] = 0
                mem[_13287 + 32] = 0
                mem[_13287 + 64] = 0
                mem[_13287 + 96] = 0
                mem[_13287 + 128] = 0
                mem[0] = 10
                _13292 = mem[64]
                mem[64] = mem[64] + 160
                mem[_13292] = poolInfo[idx].field_0
                mem[_13292 + 32] = poolInfo[idx].field_256
                mem[_13292 + 64] = poolInfo[idx].field_512
                mem[_13292 + 96] = poolInfo[idx].field_768
                mem[_13292 + 128] = poolInfo[idx].field_1024
                if block.timestamp > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13387 = mem[_13375]
                    if not mem[_13375]:
                        mem[_13292 + 64] = block.timestamp
                        require idx < poolInfo.length
                        mem[0] = 10
                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                        poolInfo[idx].field_512 = block.timestamp
                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _13387
                        mem[mem[64] + 64] = poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, _13387, poolInfo[idx].field_768, idx);
                    else:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_13375] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_13375]
                                if not 0 / mem[_13375]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13292 + 96] = poolInfo[idx].field_768
                                    mem[_13292 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13387
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13387, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 0 / mem[_13375] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13292 + 96] = ((1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 1000) + poolInfo[idx].field_768
                                    mem[_13292 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13387
                                    mem[mem[64] + 64] = ((1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13387, ((1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_13375] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_13375]
                                if not 10^12 * 0 / totalAllocPoint / mem[_13375]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13292 + 96] = poolInfo[idx].field_768
                                    mem[_13292 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13387
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13387, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) / 10^12 * 0 / totalAllocPoint / mem[_13375] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13292 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) / 1000) + poolInfo[idx].field_768
                                    mem[_13292 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _13387) - (devPercent * 10^12 * 0 / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13387) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13387) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13387
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _13387) - (devPercent * 10^12 * 0 / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13387) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13387) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13387, ((1000 * 10^12 * 0 / totalAllocPoint / _13387) - (devPercent * 10^12 * 0 / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13387) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13387) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) / block.timestamp - poolInfo[idx].field_512 != sub_753f1b98:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, devPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, 0
                                else:
                                    if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, 0
                                else:
                                    if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if mem[_13375] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13375]
                                    if not 0 / mem[_13375]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13292 + 96] = poolInfo[idx].field_768
                                        mem[_13292 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13387
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13387, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 0 / mem[_13375] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13292 + 96] = ((1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 1000) + poolInfo[idx].field_768
                                        mem[_13292 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13387
                                        mem[mem[64] + 64] = ((1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13387, ((1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000) + poolInfo[idx].field_768, idx);
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_13375] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13375]
                                    if not 10^12 * 0 / totalAllocPoint / mem[_13375]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13292 + 96] = poolInfo[idx].field_768
                                        mem[_13292 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13387
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13387, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) / 10^12 * 0 / totalAllocPoint / mem[_13375] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13292 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13375]) / 1000) + poolInfo[idx].field_768
                                        mem[_13292 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _13387) - (devPercent * 10^12 * 0 / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13387) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13387) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13387
                                        mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _13387) - (devPercent * 10^12 * 0 / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13387) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13387) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13387, ((1000 * 10^12 * 0 / totalAllocPoint / _13387) - (devPercent * 10^12 * 0 / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13387) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13387) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    if devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, 0
                                else:
                                    if treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, 0
                                else:
                                    if investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if mem[_13375] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13375]
                                    if not 0 / mem[_13375]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13292 + 96] = poolInfo[idx].field_768
                                        mem[_13292 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13387
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13387, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 0 / mem[_13375] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13292 + 96] = ((1000 * 0 / mem[_13375]) - (devPercent * 0 / mem[_13375]) - (treasuryPercent * 0 / mem[_13375]) - (investorPercent * 0 / mem[_13375]) / 1000) + poolInfo[idx].field_768
                                        mem[_13292 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13387
                                        mem[mem[64] + 64] = ((1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13387, ((1000 * 0 / _13387) - (devPercent * 0 / _13387) - (treasuryPercent * 0 / _13387) - (investorPercent * 0 / _13387) / 1000) + poolInfo[idx].field_768, idx);
                                else:
                                    if 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_13375] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13375]
                                    if not 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13292 + 96] = poolInfo[idx].field_768
                                        mem[_13292 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13387
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13387, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) / 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13292 + 96] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13375]) / 1000) + poolInfo[idx].field_768
                                        mem[_13292 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13387
                                        mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13387, ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13387) / 1000) + poolInfo[idx].field_768, idx);
                idx = idx + 1
                continue 
        else:
            mem[ceil32(return_data.size) + 96] = 0x88331ad900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 0
            mem[ceil32(return_data.size) + 132] = 0
            require ext_code.size(arg3)
            call arg3.0x88331ad9 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < poolInfo.length:
                _13288 = mem[64]
                mem[64] = mem[64] + 160
                mem[_13288] = 0
                mem[_13288 + 32] = 0
                mem[_13288 + 64] = 0
                mem[_13288 + 96] = 0
                mem[_13288 + 128] = 0
                mem[0] = 10
                _13294 = mem[64]
                mem[64] = mem[64] + 160
                mem[_13294] = poolInfo[idx].field_0
                mem[_13294 + 32] = poolInfo[idx].field_256
                mem[_13294 + 64] = poolInfo[idx].field_512
                mem[_13294 + 96] = poolInfo[idx].field_768
                mem[_13294 + 128] = poolInfo[idx].field_1024
                if block.timestamp > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13388 = mem[_13376]
                    if not mem[_13376]:
                        mem[_13294 + 64] = block.timestamp
                        require idx < poolInfo.length
                        mem[0] = 10
                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                        poolInfo[idx].field_512 = block.timestamp
                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _13388
                        mem[mem[64] + 64] = poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, _13388, poolInfo[idx].field_768, idx);
                    else:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_13376] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_13376]
                                if not 0 / mem[_13376]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13294 + 96] = poolInfo[idx].field_768
                                    mem[_13294 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13388
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13388, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 0 / mem[_13376] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13294 + 96] = ((1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 1000) + poolInfo[idx].field_768
                                    mem[_13294 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13388
                                    mem[mem[64] + 64] = ((1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13388, ((1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_13376] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_13376]
                                if not 10^12 * 0 / totalAllocPoint / mem[_13376]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13294 + 96] = poolInfo[idx].field_768
                                    mem[_13294 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13388
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13388, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) / 10^12 * 0 / totalAllocPoint / mem[_13376] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13294 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) / 1000) + poolInfo[idx].field_768
                                    mem[_13294 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _13388) - (devPercent * 10^12 * 0 / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13388) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13388) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13388
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _13388) - (devPercent * 10^12 * 0 / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13388) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13388) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13388, ((1000 * 10^12 * 0 / totalAllocPoint / _13388) - (devPercent * 10^12 * 0 / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13388) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13388) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) / block.timestamp - poolInfo[idx].field_512 != sub_753f1b98:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, devPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, 0
                                else:
                                    if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, 0
                                else:
                                    if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if mem[_13376] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13376]
                                    if not 0 / mem[_13376]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13294 + 96] = poolInfo[idx].field_768
                                        mem[_13294 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13388
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13388, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 0 / mem[_13376] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13294 + 96] = ((1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 1000) + poolInfo[idx].field_768
                                        mem[_13294 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13388
                                        mem[mem[64] + 64] = ((1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13388, ((1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000) + poolInfo[idx].field_768, idx);
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_13376] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13376]
                                    if not 10^12 * 0 / totalAllocPoint / mem[_13376]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13294 + 96] = poolInfo[idx].field_768
                                        mem[_13294 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13388
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13388, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) / 10^12 * 0 / totalAllocPoint / mem[_13376] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13294 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13376]) / 1000) + poolInfo[idx].field_768
                                        mem[_13294 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _13388) - (devPercent * 10^12 * 0 / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13388) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13388) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13388
                                        mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _13388) - (devPercent * 10^12 * 0 / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13388) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13388) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13388, ((1000 * 10^12 * 0 / totalAllocPoint / _13388) - (devPercent * 10^12 * 0 / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13388) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13388) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    if devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, 0
                                else:
                                    if treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, 0
                                else:
                                    if investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if mem[_13376] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13376]
                                    if not 0 / mem[_13376]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13294 + 96] = poolInfo[idx].field_768
                                        mem[_13294 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13388
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13388, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 0 / mem[_13376] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13294 + 96] = ((1000 * 0 / mem[_13376]) - (devPercent * 0 / mem[_13376]) - (treasuryPercent * 0 / mem[_13376]) - (investorPercent * 0 / mem[_13376]) / 1000) + poolInfo[idx].field_768
                                        mem[_13294 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13388
                                        mem[mem[64] + 64] = ((1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13388, ((1000 * 0 / _13388) - (devPercent * 0 / _13388) - (treasuryPercent * 0 / _13388) - (investorPercent * 0 / _13388) / 1000) + poolInfo[idx].field_768, idx);
                                else:
                                    if 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_13376] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13376]
                                    if not 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13294 + 96] = poolInfo[idx].field_768
                                        mem[_13294 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13388
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13388, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) / 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13294 + 96] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13376]) / 1000) + poolInfo[idx].field_768
                                        mem[_13294 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13388
                                        mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13388, ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13388) / 1000) + poolInfo[idx].field_768, idx);
                idx = idx + 1
                continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: rewarder must be contract or zero'
        mem[0] = arg2
        mem[32] = 12
        if stor12[address(arg2)]:
            revert with 0, 'add: LP already added'
        mem[100] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if not arg3:
            idx = 0
            while idx < poolInfo.length:
                _13289 = mem[64]
                mem[64] = mem[64] + 160
                mem[_13289] = 0
                mem[_13289 + 32] = 0
                mem[_13289 + 64] = 0
                mem[_13289 + 96] = 0
                mem[_13289 + 128] = 0
                mem[0] = 10
                _13296 = mem[64]
                mem[64] = mem[64] + 160
                mem[_13296] = poolInfo[idx].field_0
                mem[_13296 + 32] = poolInfo[idx].field_256
                mem[_13296 + 64] = poolInfo[idx].field_512
                mem[_13296 + 96] = poolInfo[idx].field_768
                mem[_13296 + 128] = poolInfo[idx].field_1024
                if block.timestamp > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13389 = mem[_13377]
                    if not mem[_13377]:
                        mem[_13296 + 64] = block.timestamp
                        require idx < poolInfo.length
                        mem[0] = 10
                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                        poolInfo[idx].field_512 = block.timestamp
                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _13389
                        mem[mem[64] + 64] = poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, _13389, poolInfo[idx].field_768, idx);
                    else:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_13377] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_13377]
                                if not 0 / mem[_13377]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13296 + 96] = poolInfo[idx].field_768
                                    mem[_13296 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13389
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13389, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 0 / mem[_13377] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13296 + 96] = ((1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 1000) + poolInfo[idx].field_768
                                    mem[_13296 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13389
                                    mem[mem[64] + 64] = ((1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13389, ((1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_13377] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_13377]
                                if not 10^12 * 0 / totalAllocPoint / mem[_13377]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13296 + 96] = poolInfo[idx].field_768
                                    mem[_13296 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13389
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13389, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) / 10^12 * 0 / totalAllocPoint / mem[_13377] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13296 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) / 1000) + poolInfo[idx].field_768
                                    mem[_13296 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _13389) - (devPercent * 10^12 * 0 / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13389) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13389) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13389
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _13389) - (devPercent * 10^12 * 0 / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13389) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13389) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13389, ((1000 * 10^12 * 0 / totalAllocPoint / _13389) - (devPercent * 10^12 * 0 / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13389) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13389) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) / block.timestamp - poolInfo[idx].field_512 != sub_753f1b98:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, devPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, 0
                                else:
                                    if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, 0
                                else:
                                    if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if mem[_13377] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13377]
                                    if not 0 / mem[_13377]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13296 + 96] = poolInfo[idx].field_768
                                        mem[_13296 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13389
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13389, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 0 / mem[_13377] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13296 + 96] = ((1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 1000) + poolInfo[idx].field_768
                                        mem[_13296 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13389
                                        mem[mem[64] + 64] = ((1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13389, ((1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000) + poolInfo[idx].field_768, idx);
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_13377] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13377]
                                    if not 10^12 * 0 / totalAllocPoint / mem[_13377]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13296 + 96] = poolInfo[idx].field_768
                                        mem[_13296 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13389
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13389, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) / 10^12 * 0 / totalAllocPoint / mem[_13377] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13296 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13377]) / 1000) + poolInfo[idx].field_768
                                        mem[_13296 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _13389) - (devPercent * 10^12 * 0 / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13389) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13389) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13389
                                        mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _13389) - (devPercent * 10^12 * 0 / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13389) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13389) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13389, ((1000 * 10^12 * 0 / totalAllocPoint / _13389) - (devPercent * 10^12 * 0 / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13389) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13389) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    if devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, 0
                                else:
                                    if treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, 0
                                else:
                                    if investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if mem[_13377] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13377]
                                    if not 0 / mem[_13377]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13296 + 96] = poolInfo[idx].field_768
                                        mem[_13296 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13389
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13389, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 0 / mem[_13377] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13296 + 96] = ((1000 * 0 / mem[_13377]) - (devPercent * 0 / mem[_13377]) - (treasuryPercent * 0 / mem[_13377]) - (investorPercent * 0 / mem[_13377]) / 1000) + poolInfo[idx].field_768
                                        mem[_13296 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13389
                                        mem[mem[64] + 64] = ((1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13389, ((1000 * 0 / _13389) - (devPercent * 0 / _13389) - (treasuryPercent * 0 / _13389) - (investorPercent * 0 / _13389) / 1000) + poolInfo[idx].field_768, idx);
                                else:
                                    if 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_13377] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13377]
                                    if not 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13296 + 96] = poolInfo[idx].field_768
                                        mem[_13296 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13389
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13389, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) / 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13296 + 96] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13377]) / 1000) + poolInfo[idx].field_768
                                        mem[_13296 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13389
                                        mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13389, ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13389) / 1000) + poolInfo[idx].field_768, idx);
                idx = idx + 1
                continue 
        else:
            mem[ceil32(return_data.size) + 96] = 0x88331ad900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 0
            mem[ceil32(return_data.size) + 132] = 0
            require ext_code.size(arg3)
            call arg3.0x88331ad9 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < poolInfo.length:
                _13290 = mem[64]
                mem[64] = mem[64] + 160
                mem[_13290] = 0
                mem[_13290 + 32] = 0
                mem[_13290 + 64] = 0
                mem[_13290 + 96] = 0
                mem[_13290 + 128] = 0
                mem[0] = 10
                _13298 = mem[64]
                mem[64] = mem[64] + 160
                mem[_13298] = poolInfo[idx].field_0
                mem[_13298 + 32] = poolInfo[idx].field_256
                mem[_13298 + 64] = poolInfo[idx].field_512
                mem[_13298 + 96] = poolInfo[idx].field_768
                mem[_13298 + 128] = poolInfo[idx].field_1024
                if block.timestamp > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13390 = mem[_13378]
                    if not mem[_13378]:
                        mem[_13298 + 64] = block.timestamp
                        require idx < poolInfo.length
                        mem[0] = 10
                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                        poolInfo[idx].field_512 = block.timestamp
                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _13390
                        mem[mem[64] + 64] = poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, _13390, poolInfo[idx].field_768, idx);
                    else:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(sub_d10fc104Address)
                                call sub_d10fc104Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_13378] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_13378]
                                if not 0 / mem[_13378]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13298 + 96] = poolInfo[idx].field_768
                                    mem[_13298 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13390
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13390, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 0 / mem[_13378] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13298 + 96] = ((1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 1000) + poolInfo[idx].field_768
                                    mem[_13298 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13390
                                    mem[mem[64] + 64] = ((1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13390, ((1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_13378] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_13378]
                                if not 10^12 * 0 / totalAllocPoint / mem[_13378]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13298 + 96] = poolInfo[idx].field_768
                                    mem[_13298 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13390
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13390, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) / 10^12 * 0 / totalAllocPoint / mem[_13378] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_13298 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) / 1000) + poolInfo[idx].field_768
                                    mem[_13298 + 64] = block.timestamp
                                    require idx < poolInfo.length
                                    mem[0] = 10
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _13390) - (devPercent * 10^12 * 0 / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13390) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13390) / 1000
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _13390
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _13390) - (devPercent * 10^12 * 0 / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13390) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13390) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _13390, ((1000 * 10^12 * 0 / totalAllocPoint / _13390) - (devPercent * 10^12 * 0 / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13390) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13390) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) / block.timestamp - poolInfo[idx].field_512 != sub_753f1b98:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, devPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, 0
                                else:
                                    if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, 0
                                else:
                                    if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if mem[_13378] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13378]
                                    if not 0 / mem[_13378]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13298 + 96] = poolInfo[idx].field_768
                                        mem[_13298 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13390
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13390, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 0 / mem[_13378] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13298 + 96] = ((1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 1000) + poolInfo[idx].field_768
                                        mem[_13298 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13390
                                        mem[mem[64] + 64] = ((1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13390, ((1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000) + poolInfo[idx].field_768, idx);
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_13378] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13378]
                                    if not 10^12 * 0 / totalAllocPoint / mem[_13378]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13298 + 96] = poolInfo[idx].field_768
                                        mem[_13298 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13390
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13390, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) / 10^12 * 0 / totalAllocPoint / mem[_13378] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13298 + 96] = ((1000 * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_13378]) / 1000) + poolInfo[idx].field_768
                                        mem[_13298 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / _13390) - (devPercent * 10^12 * 0 / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13390) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13390) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13390
                                        mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _13390) - (devPercent * 10^12 * 0 / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13390) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13390) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13390, ((1000 * 10^12 * 0 / totalAllocPoint / _13390) - (devPercent * 10^12 * 0 / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _13390) - (investorPercent * 10^12 * 0 / totalAllocPoint / _13390) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / (block.timestamp * sub_753f1b98) - (poolInfo[idx].field_512 * sub_753f1b98) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    if devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, 0
                                else:
                                    if treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args treasuryAddr, treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, 0
                                else:
                                    if investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args investorAddr, investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(sub_d10fc104Address)
                                    call sub_d10fc104Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (1000 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if mem[_13378] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13378]
                                    if not 0 / mem[_13378]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13298 + 96] = poolInfo[idx].field_768
                                        mem[_13298 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13390
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13390, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 0 / mem[_13378] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13298 + 96] = ((1000 * 0 / mem[_13378]) - (devPercent * 0 / mem[_13378]) - (treasuryPercent * 0 / mem[_13378]) - (investorPercent * 0 / mem[_13378]) / 1000) + poolInfo[idx].field_768
                                        mem[_13298 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13390
                                        mem[mem[64] + 64] = ((1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13390, ((1000 * 0 / _13390) - (devPercent * 0 / _13390) - (treasuryPercent * 0 / _13390) - (investorPercent * 0 / _13390) / 1000) + poolInfo[idx].field_768, idx);
                                else:
                                    if 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_13378] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require mem[_13378]
                                    if not 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]:
                                        if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13298 + 96] = poolInfo[idx].field_768
                                        mem[_13298 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13390
                                        mem[mem[64] + 64] = poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13390, poolInfo[idx].field_768, idx);
                                    else:
                                        if (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) / 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_13298 + 96] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13378]) / 1000) + poolInfo[idx].field_768
                                        mem[_13298 + 64] = block.timestamp
                                        require idx < poolInfo.length
                                        mem[0] = 10
                                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                                        poolInfo[idx].field_512 = block.timestamp
                                        poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) / 1000
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                        mem[mem[64]] = block.timestamp
                                        mem[mem[64] + 32] = _13390
                                        mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) / 1000) + poolInfo[idx].field_768
                                        emit UpdatePool(block.timestamp, _13390, ((1000 * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (devPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (treasuryPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) - (investorPercent * 10^12 * (block.timestamp * sub_753f1b98 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_753f1b98 * poolInfo[idx].field_256) / totalAllocPoint / _13390) / 1000) + poolInfo[idx].field_768, idx);
                idx = idx + 1
                continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storC65A[stor10.length] = arg1
    if block.timestamp > startTimestamp:
        storC65A[stor10.length] = block.timestamp
    else:
        storC65A[stor10.length] = startTimestamp
    storC65A[stor10.length] = 0
    storC65A[stor10.length] = arg3
    if not stor12[address(arg2)]:
        stor11.length++
        stor11[stor11.length].field_0 = arg2
        stor11[stor11.length].field_160 = 0
        stor12[address(arg2)] = stor11.length
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0x4b16bd24: arg1, poolInfo.length - 1, arg2, arg3
}



}
