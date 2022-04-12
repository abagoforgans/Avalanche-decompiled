contract main {




// =====================  Runtime code  =====================


#
#  - updateEmissionRate(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#  - pendingTokens(uint256 arg1, address arg2)
#
address owner;
address joeAddress;
address devAddr;
address treasuryAddr;
address investorAddr;
uint256 joePerSec;
uint256 devPercent;
uint256 treasuryPercent;
uint256 investorPercent;
array of struct poolInfo;
array of struct stor10;
mapping of uint256 stor11;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of address stor49791959467252497455735130940088646708311117250336157395101362029847983278003;

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

function joe() payable {
    return joeAddress
}

function joePerSec() payable {
    return joePerSec
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
        revert with 0, 'setInvestorAddr: wut?'
    investorAddr = arg1
}

function setTreasuryAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddr != msg.sender:
        revert with 0, 'setTreasuryAddr: wut?'
    treasuryAddr = arg1
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setDevPercent: invalid percent value'
    if treasuryPercent + arg1 + investorPercent > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setDevPercent: total percent over max'
    devPercent = arg1
}

function setInvestorPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setInvestorPercent: invalid percent value'
    if devPercent + arg1 + treasuryPercent > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setInvestorPercent: total percent over max'
    investorPercent = arg1
}

function setTreasuryPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setTreasuryPercent: invalid percent value'
    if devPercent + arg1 + investorPercent > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setTreasuryPercent: total percent over max'
    treasuryPercent = arg1
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
            poolInfo[arg1].field_512 = block.timestamp
        else:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if block.timestamp - poolInfo[arg1].field_512:
                    if (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) / block.timestamp - poolInfo[arg1].field_512 != joePerSec:
                        revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / totalAllocPoint:
                    require ext_code.size(joeAddress)
                    call joeAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, 0
                else:
                    if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(joeAddress)
                    call joeAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddr, devPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(joeAddress)
                    call joeAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args treasuryAddr, 0
                else:
                    if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(joeAddress)
                    call joeAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(joeAddress)
                    call joeAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args investorAddr, 0
                else:
                    if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(joeAddress)
                    call joeAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(joeAddress)
                    call joeAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                else:
                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(joeAddress)
                    call joeAddress.mint(address rg1, uint256 rg2) with:
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
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                    else:
                        if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
                        poolInfo[arg1].field_512 = block.timestamp
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
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                    else:
                        if (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 10^12 * 0 / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
            else:
                if (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) / block.timestamp - poolInfo[arg1].field_512 != joePerSec:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if block.timestamp - poolInfo[arg1].field_512:
                        if (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) / block.timestamp - poolInfo[arg1].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, devPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
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
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_512 = block.timestamp
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
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 10^12 * 0 / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
                else:
                    if (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) != poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if block.timestamp - poolInfo[arg1].field_512:
                        if (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) / block.timestamp - poolInfo[arg1].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3063 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3064 = mem[_3063]
            if not mem[_3063]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if poolInfo[idx].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if block.timestamp - poolInfo[idx].field_512:
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddr, devPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if mem[_3063] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_3063]
                        if not 0 / mem[_3063]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _3064
                            mem[mem[64] + 64] = poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _3064, poolInfo[idx].field_768, idx);
                        else:
                            if (1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 0 / mem[_3063] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 1000
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _3064
                            mem[mem[64] + 64] = ((1000 * 0 / _3064) - (devPercent * 0 / _3064) - (treasuryPercent * 0 / _3064) - (investorPercent * 0 / _3064) / 1000) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _3064, ((1000 * 0 / _3064) - (devPercent * 0 / _3064) - (treasuryPercent * 0 / _3064) - (investorPercent * 0 / _3064) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_3063] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_3063]
                        if not 10^12 * 0 / totalAllocPoint / mem[_3063]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _3064
                            mem[mem[64] + 64] = poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _3064, poolInfo[idx].field_768, idx);
                        else:
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) / 10^12 * 0 / totalAllocPoint / mem[_3063] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) / 1000
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _3064
                            mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3064) - (devPercent * 10^12 * 0 / totalAllocPoint / _3064) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3064) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3064) / 1000) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _3064, ((1000 * 10^12 * 0 / totalAllocPoint / _3064) - (devPercent * 10^12 * 0 / totalAllocPoint / _3064) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3064) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3064) / 1000) + poolInfo[idx].field_768, idx);
                else:
                    if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if block.timestamp - poolInfo[idx].field_512:
                            if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_3063] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3063]
                            if not 0 / mem[_3063]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3064
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3064, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 0 / mem[_3063] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3064
                                mem[mem[64] + 64] = ((1000 * 0 / _3064) - (devPercent * 0 / _3064) - (treasuryPercent * 0 / _3064) - (investorPercent * 0 / _3064) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3064, ((1000 * 0 / _3064) - (devPercent * 0 / _3064) - (treasuryPercent * 0 / _3064) - (investorPercent * 0 / _3064) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_3063] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3063]
                            if not 10^12 * 0 / totalAllocPoint / mem[_3063]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3064
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3064, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) / 10^12 * 0 / totalAllocPoint / mem[_3063] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3063]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3064
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3064) - (devPercent * 10^12 * 0 / totalAllocPoint / _3064) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3064) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3064) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3064, ((1000 * 10^12 * 0 / totalAllocPoint / _3064) - (devPercent * 10^12 * 0 / totalAllocPoint / _3064) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3064) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3064) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if block.timestamp - poolInfo[idx].field_512:
                            if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_3063] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3063]
                            if not 0 / mem[_3063]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3064
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3064, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 0 / mem[_3063] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_3063]) - (devPercent * 0 / mem[_3063]) - (treasuryPercent * 0 / mem[_3063]) - (investorPercent * 0 / mem[_3063]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3064
                                mem[mem[64] + 64] = ((1000 * 0 / _3064) - (devPercent * 0 / _3064) - (treasuryPercent * 0 / _3064) - (investorPercent * 0 / _3064) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3064, ((1000 * 0 / _3064) - (devPercent * 0 / _3064) - (treasuryPercent * 0 / _3064) - (investorPercent * 0 / _3064) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_3063] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3063]
                            if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3064
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3064, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_3063]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3064
                                mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _3064) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _3064) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _3064) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _3064) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3064, ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _3064) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _3064) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _3064) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _3064) / 1000) + poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
}

function rewarderBonusTokenInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    mem[0] = 9
    if not poolInfo[arg1].field_1024:
        return 0, 64, 0
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.rewardToken() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.rewardToken() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 4
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
    mem[(2 * ceil32(return_data.size)) + 132] = 0, mem[(2 * ceil32(return_data.size)) + 132 len 28]
    mem[(2 * ceil32(return_data.size)) + 136] = 0
    staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 132 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            return address(ext_call.return_data[0]), 64, 3, 0, 0
        if ext_call.return_data[0] < 64:
            if ext_call.return_data[0] != 32:
                return address(ext_call.return_data[0]), 64, 3, 0, 0
            if uint8(var46001) >= 32:
                require uint8(var46001) <= test266151307()
                if uint8(var46001):
                    if uint8(var55002) >= 32:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var57003) < ext_call.return_data[0]
                    if not var61001:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var63002) < ext_call.return_data[0]
                    require uint8(var65004) < uint8(var46001)
                    if uint8(var69002) >= 32:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var71003) < ext_call.return_data[0]
                    if not var75001:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var77002) < ext_call.return_data[0]
                    require uint8(var79004) < uint8(var46001)
                    if uint8(var83002) >= 32:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var85003) < ext_call.return_data[0]
                    # nil
                else:
                    if uint8(var54002) >= 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var46001))])
                    require uint8(var56003) < ext_call.return_data[0]
                    if not var60001:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var46001))])
                    require uint8(var62002) < ext_call.return_data[0]
                    require uint8(var64004) < uint8(var46001)
                    mem[var66001 + (2 * ceil32(return_data.size)) + 164 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if uint8(var68002) >= 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var46001))])
                    require uint8(var70003) < ext_call.return_data[0]
                    if not var74001:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var46001))])
                    require uint8(var76002) < ext_call.return_data[0]
                    require uint8(var78004) < uint8(var46001)
                    mem[var80001 + (2 * ceil32(return_data.size)) + 164 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if uint8(var82002) >= 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var46001))])
                    require uint8(var84003) < ext_call.return_data[0]
                    # nil
            else:
                require uint8(var48002) < ext_call.return_data[0]
                if not var52001:
                    require uint8(var52002) <= test266151307()
                    if uint8(var52002):
                        if uint8(var60002) >= 32:
                            return address(ext_call.return_data[0]), Array(len=uint8(var52002), data=call.data[calldata.size len uint8(var52002)])
                        require uint8(var62003) < ext_call.return_data[0]
                        if not var66001:
                            return address(ext_call.return_data[0]), Array(len=uint8(var52002), data=call.data[calldata.size len uint8(var52002)])
                        require uint8(var68002) < ext_call.return_data[0]
                        require uint8(var70004) < uint8(var52002)
                        if uint8(var74002) >= 32:
                            return address(ext_call.return_data[0]), Array(len=uint8(var52002), data=call.data[calldata.size len uint8(var52002)])
                        require uint8(var76003) < ext_call.return_data[0]
                        if not var80001:
                            return address(ext_call.return_data[0]), Array(len=uint8(var52002), data=call.data[calldata.size len uint8(var52002)])
                        require uint8(var82002) < ext_call.return_data[0]
                        require uint8(var84004) < uint8(var52002)
                        # nil
                    else:
                        if uint8(var59002) >= 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(var52002), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var52002))])
                        require uint8(var61003) < ext_call.return_data[0]
                        if not var65001:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(var52002), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var52002))])
                        require uint8(var67002) < ext_call.return_data[0]
                        require uint8(var69004) < uint8(var52002)
                        mem[var71001 + (2 * ceil32(return_data.size)) + 164 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if uint8(var73002) >= 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(var52002), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var52002))])
                        require uint8(var75003) < ext_call.return_data[0]
                        if not var79001:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(var52002), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(var52002))])
                        require uint8(var81002) < ext_call.return_data[0]
                        require uint8(var83004) < uint8(var52002)
                        # nil
                else:
                    idx = var52002
                    while uint8(idx + 1) < 32:
                        require uint8(idx + 1) < ext_call.return_data[0]
                        if Mask(8, 248, mem[uint8(idx + 1) + 128]):
                            idx = idx + 1
                            continue 
                        require uint8(idx + 1) <= test266151307()
                        if not uint8(idx + 1):
                            if uint8(var65002) >= 32:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 164] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 196] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 228] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = mem[s + (2 * ceil32(return_data.size)) + 164]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260 len ceil32(uint8(idx + 1))])
                            require uint8(var67003) < ext_call.return_data[0]
                            if not var71001:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 164] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 196] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 228] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = mem[s + (2 * ceil32(return_data.size)) + 164]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260 len ceil32(uint8(idx + 1))])
                            require uint8(var73002) < ext_call.return_data[0]
                            require uint8(var75004) < uint8(idx + 1)
                            mem[var77001 + (2 * ceil32(return_data.size)) + 164 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if uint8(var79002) >= 32:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 164] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 196] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 228] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = mem[s + (2 * ceil32(return_data.size)) + 164]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260 len ceil32(uint8(idx + 1))])
                            require uint8(var81003) < ext_call.return_data[0]
                            if var85001:
                                require uint8(var87002) < ext_call.return_data[0]
                                require uint8(var89004) < uint8(idx + 1)
                                # nil
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 164] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 196] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 228] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = mem[s + (2 * ceil32(return_data.size)) + 164]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260 len ceil32(uint8(idx + 1))])
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164 len uint8(idx + 1)] = call.data[calldata.size len uint8(idx + 1)]
                            if uint8(var66002) >= 32:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 164] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 196] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 228] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = mem[s + (2 * ceil32(return_data.size)) + 164]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260 len ceil32(uint8(idx + 1))])
                            require uint8(var68003) < ext_call.return_data[0]
                            if not var72001:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 164] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 196] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 228] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = mem[s + (2 * ceil32(return_data.size)) + 164]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260 len ceil32(uint8(idx + 1))])
                            require uint8(var74002) < ext_call.return_data[0]
                            require uint8(var76004) < uint8(idx + 1)
                            mem[var78001 + (2 * ceil32(return_data.size)) + 164 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if uint8(var80002) >= 32:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 164] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 196] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 228] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = mem[s + (2 * ceil32(return_data.size)) + 164]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260 len ceil32(uint8(idx + 1))])
                            require uint8(var82003) < ext_call.return_data[0]
                            if var86001:
                                require uint8(var88002) < ext_call.return_data[0]
                                require uint8(var90004) < uint8(idx + 1)
                                # nil
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 164] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 196] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 228] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = mem[s + (2 * ceil32(return_data.size)) + 164]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(uint8(idx + 1)) + 260 len ceil32(uint8(idx + 1))])
                    require uint8(idx + 1) <= test266151307()
                    if uint8(idx + 1):
                        if uint8(var64002) >= 32:
                            return address(ext_call.return_data[0]), Array(len=uint8(idx + 1), data=call.data[calldata.size len uint8(idx + 1)])
                        require uint8(var66003) < ext_call.return_data[0]
                        if not var70001:
                            return address(ext_call.return_data[0]), Array(len=uint8(idx + 1), data=call.data[calldata.size len uint8(idx + 1)])
                        require uint8(var72002) < ext_call.return_data[0]
                        require uint8(var74004) < uint8(idx + 1)
                        if uint8(var78002) >= 32:
                            return address(ext_call.return_data[0]), Array(len=uint8(idx + 1), data=call.data[calldata.size len uint8(idx + 1)])
                        require uint8(var80003) < ext_call.return_data[0]
                        if not var84001:
                            return address(ext_call.return_data[0]), Array(len=uint8(idx + 1), data=call.data[calldata.size len uint8(idx + 1)])
                        require uint8(var86002) < ext_call.return_data[0]
                        require uint8(var88004) < uint8(idx + 1)
                        # nil
                    else:
                        if uint8(var63002) >= 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(idx + 1))])
                        require uint8(var65003) < ext_call.return_data[0]
                        if not var69001:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(idx + 1))])
                        require uint8(var71002) < ext_call.return_data[0]
                        require uint8(var73004) < uint8(idx + 1)
                        mem[var75001 + (2 * ceil32(return_data.size)) + 164 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if uint8(var77002) >= 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(idx + 1))])
                        require uint8(var79003) < ext_call.return_data[0]
                        if not var83001:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + 164 len ceil32(uint8(idx + 1))])
                        require uint8(var85002) < ext_call.return_data[0]
                        require uint8(var87004) < uint8(idx + 1)
                        # nil
        else:
            require ext_call.return_data[0] >= 32
            _220 = mem[128]
            require mem[128] <= test266151307()
            require mem[128] + 159 < ext_call.return_data[0] + 128
            _233 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require ceil32(mem[mem[128] + 128]) + 164 >= 132 and (2 * ceil32(return_data.size)) + ceil32(mem[mem[128] + 128]) + 164 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[mem[128] + 128]) + 164
            mem[(2 * ceil32(return_data.size)) + 132] = mem[mem[128] + 128]
            require ext_call.return_data[0] + 128 >= _233 + _220 + 160
            mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_233)] = mem[_220 + 160 len ceil32(_233)]
            if ceil32(_233) <= _233:
                mem[mem[64]] = address(ext_call.return_data[0])
                mem[mem[64] + 32] = 64
                _495 = mem[(2 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 96 len ceil32(_495)] = mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_495)]
                if ceil32(_495) > _495:
                    mem[_495 + mem[64] + 96] = 0
                return address(ext_call.return_data[0]), 64, mem[mem[64] + 64 len ceil32(_495) + 32]
            mem[_233 + (2 * ceil32(return_data.size)) + 164] = 0
            mem[mem[64]] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 64
            _479 = mem[(2 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 96 len ceil32(_479)] = mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_479)]
            if ceil32(_479) > _479:
                mem[_479 + mem[64] + 96] = 0
            return address(ext_call.return_data[0]), 64, mem[mem[64] + 64 len ceil32(_479) + 32]
    else:
        mem[(2 * ceil32(return_data.size)) + 132] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            return address(ext_call.return_data[0]), 64, 3, 0, 0
        if return_data.size < 64:
            if return_data.size != 32:
                return address(ext_call.return_data[0]), 64, 3, 0, 0
            if uint8(var46001) >= 32:
                require uint8(var46001) <= test266151307()
                if uint8(var46001):
                    if uint8(var55002) >= 32:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var57003) < return_data.size
                    if not var61001:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var63002) < return_data.size
                    require uint8(var65004) < uint8(var46001)
                    if uint8(var69002) >= 32:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var71003) < return_data.size
                    if not var75001:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var77002) < return_data.size
                    require uint8(var79004) < uint8(var46001)
                    if uint8(var83002) >= 32:
                        return address(ext_call.return_data[0]), Array(len=uint8(var46001), data=call.data[calldata.size len uint8(var46001)])
                    require uint8(var85003) < return_data.size
                    # nil
                else:
                    if uint8(var54002) >= 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var46001))])
                    require uint8(var56003) < return_data.size
                    if not var60001:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var46001))])
                    require uint8(var62002) < return_data.size
                    require uint8(var64004) < uint8(var46001)
                    mem[var66001 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if uint8(var68002) >= 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var46001))])
                    require uint8(var70003) < return_data.size
                    if not var74001:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var46001))])
                    require uint8(var76002) < return_data.size
                    require uint8(var78004) < uint8(var46001)
                    mem[var80001 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if uint8(var82002) >= 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(var46001), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var46001))])
                    require uint8(var84003) < return_data.size
                    # nil
            else:
                require uint8(var48002) < return_data.size
                if not var52001:
                    require uint8(var52002) <= test266151307()
                    if uint8(var52002):
                        if uint8(var60002) >= 32:
                            return address(ext_call.return_data[0]), Array(len=uint8(var52002), data=call.data[calldata.size len uint8(var52002)])
                        require uint8(var62003) < return_data.size
                        if not var66001:
                            return address(ext_call.return_data[0]), Array(len=uint8(var52002), data=call.data[calldata.size len uint8(var52002)])
                        require uint8(var68002) < return_data.size
                        require uint8(var70004) < uint8(var52002)
                        if uint8(var74002) >= 32:
                            return address(ext_call.return_data[0]), Array(len=uint8(var52002), data=call.data[calldata.size len uint8(var52002)])
                        require uint8(var76003) < return_data.size
                        if not var80001:
                            return address(ext_call.return_data[0]), Array(len=uint8(var52002), data=call.data[calldata.size len uint8(var52002)])
                        require uint8(var82002) < return_data.size
                        require uint8(var84004) < uint8(var52002)
                        # nil
                    else:
                        if uint8(var59002) >= 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(var52002), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var52002))])
                        require uint8(var61003) < return_data.size
                        if not var65001:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(var52002), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var52002))])
                        require uint8(var67002) < return_data.size
                        require uint8(var69004) < uint8(var52002)
                        mem[var71001 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if uint8(var73002) >= 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(var52002), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var52002))])
                        require uint8(var75003) < return_data.size
                        if not var79001:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(var52002), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(var52002))])
                        require uint8(var81002) < return_data.size
                        require uint8(var83004) < uint8(var52002)
                        # nil
                else:
                    idx = var52002
                    while uint8(idx + 1) < 32:
                        require uint8(idx + 1) < return_data.size
                        if Mask(8, 248, mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + 164]):
                            idx = idx + 1
                            continue 
                        require uint8(idx + 1) <= test266151307()
                        if not uint8(idx + 1):
                            if uint8(var65002) >= 32:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))])
                            require uint8(var67003) < return_data.size
                            if not var71001:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))])
                            require uint8(var73002) < return_data.size
                            require uint8(var75004) < uint8(idx + 1)
                            mem[var77001 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if uint8(var79002) >= 32:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))])
                            require uint8(var81003) < return_data.size
                            if var85001:
                                require uint8(var87002) < return_data.size
                                require uint8(var89004) < uint8(idx + 1)
                                # nil
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))])
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len uint8(idx + 1)] = call.data[calldata.size len uint8(idx + 1)]
                            if uint8(var66002) >= 32:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))])
                            require uint8(var68003) < return_data.size
                            if not var72001:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))])
                            require uint8(var74002) < return_data.size
                            require uint8(var76004) < uint8(idx + 1)
                            mem[var78001 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if uint8(var80002) >= 32:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))])
                            require uint8(var82003) < return_data.size
                            if var86001:
                                require uint8(var88002) < return_data.size
                                require uint8(var90004) < uint8(idx + 1)
                                # nil
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                                s = 0
                                while s < uint8(idx + 1):
                                    mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165]
                                    s = s + 32
                                    continue 
                                if ceil32(uint8(idx + 1)) > uint8(idx + 1):
                                    mem[uint8(idx + 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = 0
                                return address(ext_call.return_data[0]), 
                                       Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))])
                    require uint8(idx + 1) <= test266151307()
                    if uint8(idx + 1):
                        if uint8(var64002) >= 32:
                            return address(ext_call.return_data[0]), Array(len=uint8(idx + 1), data=call.data[calldata.size len uint8(idx + 1)])
                        require uint8(var66003) < return_data.size
                        if not var70001:
                            return address(ext_call.return_data[0]), Array(len=uint8(idx + 1), data=call.data[calldata.size len uint8(idx + 1)])
                        require uint8(var72002) < return_data.size
                        require uint8(var74004) < uint8(idx + 1)
                        if uint8(var78002) >= 32:
                            return address(ext_call.return_data[0]), Array(len=uint8(idx + 1), data=call.data[calldata.size len uint8(idx + 1)])
                        require uint8(var80003) < return_data.size
                        if not var84001:
                            return address(ext_call.return_data[0]), Array(len=uint8(idx + 1), data=call.data[calldata.size len uint8(idx + 1)])
                        require uint8(var86002) < return_data.size
                        require uint8(var88004) < uint8(idx + 1)
                        # nil
                    else:
                        if uint8(var63002) >= 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))])
                        require uint8(var65003) < return_data.size
                        if not var69001:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))])
                        require uint8(var71002) < return_data.size
                        require uint8(var73004) < uint8(idx + 1)
                        mem[var75001 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if uint8(var77002) >= 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))])
                        require uint8(var79003) < return_data.size
                        if not var83001:
                            return address(ext_call.return_data[0]), 
                                   Array(len=uint8(idx + 1), data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))])
                        require uint8(var85002) < return_data.size
                        require uint8(var87004) < uint8(idx + 1)
                        # nil
        else:
            require return_data.size >= 32
            _222 = mem[(2 * ceil32(return_data.size)) + 164]
            require mem[(2 * ceil32(return_data.size)) + 164] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 195 < (2 * ceil32(return_data.size)) + return_data.size + 164
            _236 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133 and (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]
            require return_data.size + 32 >= _236 + _222 + 64
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_236)] = mem[(2 * ceil32(return_data.size)) + _222 + 196 len ceil32(_236)]
            if ceil32(_236) > _236:
                mem[_236 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = 0
            mem[mem[64]] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = _236
            mem[mem[64] + 96 len ceil32(_236)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_236)]
            if ceil32(_236) > _236:
                mem[_236 + mem[64] + 96] = 0
            return address(ext_call.return_data[0]), Array(len=_236, data=mem[mem[64] + 96 len ceil32(_236)])
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
            mem[0] = 9
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6170 = mem[_6166]
                if not mem[_6166]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if block.timestamp - poolInfo[idx].field_512:
                            if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_6166] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6166]
                            if not 0 / mem[_6166]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6170
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6170, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 0 / mem[_6166] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6170
                                mem[mem[64] + 64] = ((1000 * 0 / _6170) - (devPercent * 0 / _6170) - (treasuryPercent * 0 / _6170) - (investorPercent * 0 / _6170) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6170, ((1000 * 0 / _6170) - (devPercent * 0 / _6170) - (treasuryPercent * 0 / _6170) - (investorPercent * 0 / _6170) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6166] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6166]
                            if not 10^12 * 0 / totalAllocPoint / mem[_6166]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6170
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6170, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) / 10^12 * 0 / totalAllocPoint / mem[_6166] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6170
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6170) - (devPercent * 10^12 * 0 / totalAllocPoint / _6170) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6170) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6170) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6170, ((1000 * 10^12 * 0 / totalAllocPoint / _6170) - (devPercent * 10^12 * 0 / totalAllocPoint / _6170) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6170) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6170) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if block.timestamp - poolInfo[idx].field_512:
                                if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_6166] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6166]
                                if not 0 / mem[_6166]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6170
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6170, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 0 / mem[_6166] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6170
                                    mem[mem[64] + 64] = ((1000 * 0 / _6170) - (devPercent * 0 / _6170) - (treasuryPercent * 0 / _6170) - (investorPercent * 0 / _6170) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6170, ((1000 * 0 / _6170) - (devPercent * 0 / _6170) - (treasuryPercent * 0 / _6170) - (investorPercent * 0 / _6170) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6166] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6166]
                                if not 10^12 * 0 / totalAllocPoint / mem[_6166]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6170
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6170, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) / 10^12 * 0 / totalAllocPoint / mem[_6166] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6166]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6170
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6170) - (devPercent * 10^12 * 0 / totalAllocPoint / _6170) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6170) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6170) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6170, ((1000 * 10^12 * 0 / totalAllocPoint / _6170) - (devPercent * 10^12 * 0 / totalAllocPoint / _6170) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6170) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6170) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if block.timestamp - poolInfo[idx].field_512:
                                if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_6166] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6166]
                                if not 0 / mem[_6166]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6170
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6170, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 0 / mem[_6166] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_6166]) - (devPercent * 0 / mem[_6166]) - (treasuryPercent * 0 / mem[_6166]) - (investorPercent * 0 / mem[_6166]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6170
                                    mem[mem[64] + 64] = ((1000 * 0 / _6170) - (devPercent * 0 / _6170) - (treasuryPercent * 0 / _6170) - (investorPercent * 0 / _6170) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6170, ((1000 * 0 / _6170) - (devPercent * 0 / _6170) - (treasuryPercent * 0 / _6170) - (investorPercent * 0 / _6170) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6166] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6166]
                                if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6170
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6170, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6166]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6170
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6170) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6170) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6170) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6170) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6170, ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6170) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6170) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6170) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6170) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: rewarder must be contract or zero'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6172 = mem[_6168]
                if not mem[_6168]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if block.timestamp - poolInfo[idx].field_512:
                            if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_6168] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6168]
                            if not 0 / mem[_6168]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6172
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6172, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 0 / mem[_6168] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6172
                                mem[mem[64] + 64] = ((1000 * 0 / _6172) - (devPercent * 0 / _6172) - (treasuryPercent * 0 / _6172) - (investorPercent * 0 / _6172) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6172, ((1000 * 0 / _6172) - (devPercent * 0 / _6172) - (treasuryPercent * 0 / _6172) - (investorPercent * 0 / _6172) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6168] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6168]
                            if not 10^12 * 0 / totalAllocPoint / mem[_6168]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6172
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6172, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) / 10^12 * 0 / totalAllocPoint / mem[_6168] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6172
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6172) - (devPercent * 10^12 * 0 / totalAllocPoint / _6172) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6172) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6172) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6172, ((1000 * 10^12 * 0 / totalAllocPoint / _6172) - (devPercent * 10^12 * 0 / totalAllocPoint / _6172) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6172) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6172) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if block.timestamp - poolInfo[idx].field_512:
                                if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_6168] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6168]
                                if not 0 / mem[_6168]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6172
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6172, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 0 / mem[_6168] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6172
                                    mem[mem[64] + 64] = ((1000 * 0 / _6172) - (devPercent * 0 / _6172) - (treasuryPercent * 0 / _6172) - (investorPercent * 0 / _6172) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6172, ((1000 * 0 / _6172) - (devPercent * 0 / _6172) - (treasuryPercent * 0 / _6172) - (investorPercent * 0 / _6172) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6168] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6168]
                                if not 10^12 * 0 / totalAllocPoint / mem[_6168]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6172
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6172, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) / 10^12 * 0 / totalAllocPoint / mem[_6168] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6168]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6172
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6172) - (devPercent * 10^12 * 0 / totalAllocPoint / _6172) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6172) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6172) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6172, ((1000 * 10^12 * 0 / totalAllocPoint / _6172) - (devPercent * 10^12 * 0 / totalAllocPoint / _6172) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6172) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6172) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if block.timestamp - poolInfo[idx].field_512:
                                if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_6168] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6168]
                                if not 0 / mem[_6168]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6172
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6172, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 0 / mem[_6168] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_6168]) - (devPercent * 0 / mem[_6168]) - (treasuryPercent * 0 / mem[_6168]) - (investorPercent * 0 / mem[_6168]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6172
                                    mem[mem[64] + 64] = ((1000 * 0 / _6172) - (devPercent * 0 / _6172) - (treasuryPercent * 0 / _6172) - (investorPercent * 0 / _6172) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6172, ((1000 * 0 / _6172) - (devPercent * 0 / _6172) - (treasuryPercent * 0 / _6172) - (investorPercent * 0 / _6172) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6168] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6168]
                                if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6172
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6172, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6168]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6172
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6172) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6172) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6172) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6172) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6172, ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6172) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6172) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6172) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6172) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    require arg1 < poolInfo.length
    if not arg4:
        emit 0xa54644aa: arg2, arg4, arg1, poolInfo[arg1].field_1024
    else:
        poolInfo[arg1].field_1024 = arg3
        if arg4:
            emit 0xa54644aa: arg2, arg4, arg1, arg3
        else:
            require arg1 < poolInfo.length
            emit 0xa54644aa: arg2, arg4, arg1, poolInfo[arg1].field_1024
}

function add(uint256 arg1, address arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: LP token must be a valid contract'
    if ext_code.size(arg3):
        mem[0] = arg2
        mem[32] = 11
        if stor11[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6247 = mem[_6231]
                if not mem[_6231]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if block.timestamp - poolInfo[idx].field_512:
                            if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_6231] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6231]
                            if not 0 / mem[_6231]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6247
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6247, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 0 / mem[_6231] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6247
                                mem[mem[64] + 64] = ((1000 * 0 / _6247) - (devPercent * 0 / _6247) - (treasuryPercent * 0 / _6247) - (investorPercent * 0 / _6247) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6247, ((1000 * 0 / _6247) - (devPercent * 0 / _6247) - (treasuryPercent * 0 / _6247) - (investorPercent * 0 / _6247) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6231] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6231]
                            if not 10^12 * 0 / totalAllocPoint / mem[_6231]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6247
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6247, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) / 10^12 * 0 / totalAllocPoint / mem[_6231] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6247
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6247) - (devPercent * 10^12 * 0 / totalAllocPoint / _6247) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6247) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6247) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6247, ((1000 * 10^12 * 0 / totalAllocPoint / _6247) - (devPercent * 10^12 * 0 / totalAllocPoint / _6247) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6247) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6247) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if block.timestamp - poolInfo[idx].field_512:
                                if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_6231] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6231]
                                if not 0 / mem[_6231]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6247
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6247, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 0 / mem[_6231] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6247
                                    mem[mem[64] + 64] = ((1000 * 0 / _6247) - (devPercent * 0 / _6247) - (treasuryPercent * 0 / _6247) - (investorPercent * 0 / _6247) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6247, ((1000 * 0 / _6247) - (devPercent * 0 / _6247) - (treasuryPercent * 0 / _6247) - (investorPercent * 0 / _6247) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6231] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6231]
                                if not 10^12 * 0 / totalAllocPoint / mem[_6231]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6247
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6247, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) / 10^12 * 0 / totalAllocPoint / mem[_6231] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6231]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6247
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6247) - (devPercent * 10^12 * 0 / totalAllocPoint / _6247) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6247) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6247) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6247, ((1000 * 10^12 * 0 / totalAllocPoint / _6247) - (devPercent * 10^12 * 0 / totalAllocPoint / _6247) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6247) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6247) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if block.timestamp - poolInfo[idx].field_512:
                                if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_6231] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6231]
                                if not 0 / mem[_6231]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6247
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6247, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 0 / mem[_6231] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_6231]) - (devPercent * 0 / mem[_6231]) - (treasuryPercent * 0 / mem[_6231]) - (investorPercent * 0 / mem[_6231]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6247
                                    mem[mem[64] + 64] = ((1000 * 0 / _6247) - (devPercent * 0 / _6247) - (treasuryPercent * 0 / _6247) - (investorPercent * 0 / _6247) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6247, ((1000 * 0 / _6247) - (devPercent * 0 / _6247) - (treasuryPercent * 0 / _6247) - (investorPercent * 0 / _6247) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6231] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6231]
                                if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6247
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6247, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6231]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6247
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6247) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6247) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6247) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6247) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6247, ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6247) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6247) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6247) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6247) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: rewarder must be contract or zero'
        mem[0] = arg2
        mem[32] = 11
        if stor11[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6248 = mem[_6246]
                if not mem[_6246]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if block.timestamp - poolInfo[idx].field_512:
                            if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_6246] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6246]
                            if not 0 / mem[_6246]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6248
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6248, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 0 / mem[_6246] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6248
                                mem[mem[64] + 64] = ((1000 * 0 / _6248) - (devPercent * 0 / _6248) - (treasuryPercent * 0 / _6248) - (investorPercent * 0 / _6248) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6248, ((1000 * 0 / _6248) - (devPercent * 0 / _6248) - (treasuryPercent * 0 / _6248) - (investorPercent * 0 / _6248) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6246] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6246]
                            if not 10^12 * 0 / totalAllocPoint / mem[_6246]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6248
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6248, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) / 10^12 * 0 / totalAllocPoint / mem[_6246] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _6248
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6248) - (devPercent * 10^12 * 0 / totalAllocPoint / _6248) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6248) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6248) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _6248, ((1000 * 10^12 * 0 / totalAllocPoint / _6248) - (devPercent * 10^12 * 0 / totalAllocPoint / _6248) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6248) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6248) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if block.timestamp - poolInfo[idx].field_512:
                                if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_6246] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6246]
                                if not 0 / mem[_6246]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6248
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6248, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 0 / mem[_6246] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6248
                                    mem[mem[64] + 64] = ((1000 * 0 / _6248) - (devPercent * 0 / _6248) - (treasuryPercent * 0 / _6248) - (investorPercent * 0 / _6248) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6248, ((1000 * 0 / _6248) - (devPercent * 0 / _6248) - (treasuryPercent * 0 / _6248) - (investorPercent * 0 / _6248) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6246] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6246]
                                if not 10^12 * 0 / totalAllocPoint / mem[_6246]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6248
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6248, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) / 10^12 * 0 / totalAllocPoint / mem[_6246] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_6246]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6248
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _6248) - (devPercent * 10^12 * 0 / totalAllocPoint / _6248) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6248) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6248) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6248, ((1000 * 10^12 * 0 / totalAllocPoint / _6248) - (devPercent * 10^12 * 0 / totalAllocPoint / _6248) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _6248) - (investorPercent * 10^12 * 0 / totalAllocPoint / _6248) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if block.timestamp - poolInfo[idx].field_512:
                                if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_6246] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6246]
                                if not 0 / mem[_6246]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6248
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6248, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 0 / mem[_6246] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_6246]) - (devPercent * 0 / mem[_6246]) - (treasuryPercent * 0 / mem[_6246]) - (investorPercent * 0 / mem[_6246]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6248
                                    mem[mem[64] + 64] = ((1000 * 0 / _6248) - (devPercent * 0 / _6248) - (treasuryPercent * 0 / _6248) - (investorPercent * 0 / _6248) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6248, ((1000 * 0 / _6248) - (devPercent * 0 / _6248) - (treasuryPercent * 0 / _6248) - (investorPercent * 0 / _6248) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6246] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6246]
                                if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6248
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6248, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_6246]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _6248
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6248) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6248) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6248) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6248) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _6248, ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6248) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6248) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6248) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / _6248) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor6E15[stor9.length] = arg1
    if block.timestamp > startTimestamp:
        stor6E15[stor9.length] = block.timestamp
    else:
        stor6E15[stor9.length] = startTimestamp
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = arg3
    if not stor11[address(arg2)]:
        stor10.length++
        stor10[stor10.length].field_0 = arg2
        stor10[stor10.length].field_160 = 0
        stor11[address(arg2)] = stor10.length
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0x4b16bd24: arg1, poolInfo.length - 1, arg2, arg3
}



}
