contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_4a02893c(?)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#  - pendingTokens(uint256 arg1, address arg2)
#
address owner;
address stor1;
address stor2;
uint32 stor3; offset 224
uint128 stor3;
uint128 stor3; offset 112
address stor3; offset 112
uint256 sub_28949ab7;
uint256 sub_5fff87ab;
uint256 stor6;
uint256 totalValueLocked;
uint8 stor8;
uint8 stor8; offset 8
address badAddress; offset 96
uint256 stor8; offset 8
address devAddr;
address treasuryAddr;
address investorAddr;
address sub_0c418998Address;
address sub_9b8e09d0Address;
uint256 sub_4a7d91a1;
uint256 devPercent;
uint256 treasuryPercent;
uint256 investorPercent;
mapping of uint256 depositTime;
array of struct poolInfo;
array of struct stor20;
mapping of uint256 stor21;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
array of uint256 stor46529144392117707452946260303848603952187628831689540306122340668716214558865;
array of uint256 stor46529144392117707452946260303848603952187628831689540306122340668716214558866;
array of uint256 stor46529144392117707452946260303848603952187628831689540306122340668716214558867;
array of address stor46529144392117707452946260303848603952187628831689540306122340668716214558868;

function treasuryPercent() payable {
    return treasuryPercent
}

function investorPercent() payable {
    return investorPercent
}

function poolLength() payable {
    return poolInfo.length
}

function sub_0c418998(?) payable {
    return sub_0c418998Address
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

function sub_28949ab7(?) payable {
    return sub_28949ab7
}

function treasuryAddr() payable {
    return treasuryAddr
}

function depositTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositTime[arg1]
}

function sub_4a7d91a1(?) payable {
    return sub_4a7d91a1
}

function sub_4ca193d3(?) payable {
    return bool(uint8(stor8.field_8))
}

function sub_5fff87ab(?) payable {
    return sub_5fff87ab
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9b8e09d0(?) payable {
    return sub_9b8e09d0Address
}

function bad() payable {
    return badAddress
}

function investorAddr() payable {
    return investorAddr
}

function devAddr() payable {
    return devAddr
}

function startTimestamp() payable {
    return startTimestamp
}

function totalValueLocked() payable {
    return totalValueLocked
}

function devPercent() payable {
    return devPercent
}

function _fallback() payable {
    revert
}

function sub_61a72da7(?) payable {
    return (100 * stor6 / 3)
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

function sub_522b64f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor8.field_8) = Mask(248, 0, bool(arg1))
}

function sub_1725025d(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < depositTime[msg.sender]:
        return 0, depositTime[msg.sender]
    if not userInfo[arg1][msg.sender].field_0:
        return 0, depositTime[msg.sender]
    return 1, depositTime[msg.sender]
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

function sub_86ec567d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_529a2d8d(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return (ext_call.return_data[32] / 100 * 10^6)
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

function setLPTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    Mask(112, 0, stor3.field_0) = ext_call.return_data[18 len 14]
    Mask(112, 0, stor3.field_112) = ext_call.return_data[50 len 14]
    Mask(144, 0, stor3.field_112) = 0
    uint32(stor3.field_224) = ext_call.return_data[92 len 4]
    uint32(stor3.field_224) = 0
    if ext_call.return_data[18 len 14] > ext_call.return_data[50 len 14]:
        uint8(stor8.field_0) = 0
}

function sub_53b63393(?) payable {
    require ext_code.size(stor2)
    staticcall stor2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    Mask(112, 0, stor3.field_0) = ext_call.return_data[18 len 14]
    Mask(112, 0, stor3.field_112) = ext_call.return_data[50 len 14]
    Mask(144, 0, stor3.field_112) = 0
    uint32(stor3.field_224) = ext_call.return_data[92 len 4]
    uint32(stor3.field_224) = 0
    require ext_code.size(stor1)
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not uint8(stor8.field_0):
        sub_28949ab7 = 2 * 10^18 * ext_call.return_data[32] / 100 * 10^6 * Mask(112, 0, stor3.field_112) / ext_call.return_data[0]
        require Mask(112, 0, Mask(112, 0, stor3.field_0) / 10^18)
        sub_5fff87ab = Mask(112, 0, Mask(112, 0, stor3.field_112) / Mask(112, 0, Mask(112, 0, stor3.field_0) / 10^18)) * ext_call.return_data[32] / 100 * 10^6
    else:
        sub_28949ab7 = 2 * 10^18 * ext_call.return_data[32] / 100 * 10^6 * Mask(112, 0, stor3.field_0) / ext_call.return_data[0]
        require Mask(112, 0, Mask(112, 0, stor3.field_112) / 10^18)
        sub_5fff87ab = Mask(112, 0, Mask(112, 0, stor3.field_0) / Mask(112, 0, Mask(112, 0, stor3.field_112) / 10^18)) * ext_call.return_data[32] / 100 * 10^6
    return sub_28949ab7, sub_5fff87ab
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
                if not 0 / totalAllocPoint:
                    require ext_code.size(badAddress)
                    call badAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0
                else:
                    if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(badAddress)
                    call badAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, devPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(badAddress)
                    call badAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddr, 0
                else:
                    if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(badAddress)
                    call badAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(badAddress)
                    call badAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args investorAddr, 0
                else:
                    if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(badAddress)
                    call badAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(badAddress)
                    call badAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                else:
                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(badAddress)
                    call badAddress.0x40c10f19 with:
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
                if (block.timestamp * sub_4a7d91a1) - (poolInfo[arg1].field_512 * sub_4a7d91a1) / block.timestamp - poolInfo[arg1].field_512 != sub_4a7d91a1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4a7d91a1) - (poolInfo[arg1].field_512 * sub_4a7d91a1):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, devPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
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
                    if (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / (block.timestamp * sub_4a7d91a1) - (poolInfo[arg1].field_512 * sub_4a7d91a1) != poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint) / (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint:
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
                        if 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
                        else:
                            if (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000
                            poolInfo[arg1].field_512 = block.timestamp
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4a7d91a1 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000) + poolInfo[arg1].field_768, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 19
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1539 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1540 = mem[_1539]
            if not mem[_1539]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if poolInfo[idx].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, devPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if mem[_1539] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_1539]
                        if not 0 / mem[_1539]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _1540
                            mem[mem[64] + 64] = poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _1540, poolInfo[idx].field_768, idx);
                        else:
                            if (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 0 / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _1540
                            mem[mem[64] + 64] = ((1000 * 0 / _1540) - (devPercent * 0 / _1540) - (treasuryPercent * 0 / _1540) - (investorPercent * 0 / _1540) / 1000) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _1540, ((1000 * 0 / _1540) - (devPercent * 0 / _1540) - (treasuryPercent * 0 / _1540) - (investorPercent * 0 / _1540) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_1539] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_1539]
                        if not 10^12 * 0 / totalAllocPoint / mem[_1539]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _1540
                            mem[mem[64] + 64] = poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _1540, poolInfo[idx].field_768, idx);
                        else:
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 10^12 * 0 / totalAllocPoint / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 1000
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _1540
                            mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _1540) - (devPercent * 10^12 * 0 / totalAllocPoint / _1540) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _1540) - (investorPercent * 10^12 * 0 / totalAllocPoint / _1540) / 1000) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _1540, ((1000 * 10^12 * 0 / totalAllocPoint / _1540) - (devPercent * 10^12 * 0 / totalAllocPoint / _1540) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _1540) - (investorPercent * 10^12 * 0 / totalAllocPoint / _1540) / 1000) + poolInfo[idx].field_768, idx);
                else:
                    if (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) / block.timestamp - poolInfo[idx].field_512 != sub_4a7d91a1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_1539] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1539]
                            if not 0 / mem[_1539]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1540
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1540, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 0 / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1540
                                mem[mem[64] + 64] = ((1000 * 0 / _1540) - (devPercent * 0 / _1540) - (treasuryPercent * 0 / _1540) - (investorPercent * 0 / _1540) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1540, ((1000 * 0 / _1540) - (devPercent * 0 / _1540) - (treasuryPercent * 0 / _1540) - (investorPercent * 0 / _1540) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1539] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1539]
                            if not 10^12 * 0 / totalAllocPoint / mem[_1539]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1540
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1540, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 10^12 * 0 / totalAllocPoint / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1540
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _1540) - (devPercent * 10^12 * 0 / totalAllocPoint / _1540) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _1540) - (investorPercent * 10^12 * 0 / totalAllocPoint / _1540) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1540, ((1000 * 10^12 * 0 / totalAllocPoint / _1540) - (devPercent * 10^12 * 0 / totalAllocPoint / _1540) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _1540) - (investorPercent * 10^12 * 0 / totalAllocPoint / _1540) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_1539] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1539]
                            if not 0 / mem[_1539]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1540
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1540, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 0 / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1540
                                mem[mem[64] + 64] = ((1000 * 0 / _1540) - (devPercent * 0 / _1540) - (treasuryPercent * 0 / _1540) - (investorPercent * 0 / _1540) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1540, ((1000 * 0 / _1540) - (devPercent * 0 / _1540) - (treasuryPercent * 0 / _1540) - (investorPercent * 0 / _1540) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1539] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1539]
                            if not 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1540
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1540, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) / 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1540
                                mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1540) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1540) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1540) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1540) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1540, ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1540) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1540) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1540) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1540) / 1000) + poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 19
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1545 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1546 = mem[_1545]
            if not mem[_1545]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if poolInfo[idx].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, devPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(badAddress)
                        call badAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if mem[_1545] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_1545]
                        if not 0 / mem[_1545]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _1546
                            mem[mem[64] + 64] = poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _1546, poolInfo[idx].field_768, idx);
                        else:
                            if (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 0 / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _1546
                            mem[mem[64] + 64] = ((1000 * 0 / _1546) - (devPercent * 0 / _1546) - (treasuryPercent * 0 / _1546) - (investorPercent * 0 / _1546) / 1000) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _1546, ((1000 * 0 / _1546) - (devPercent * 0 / _1546) - (treasuryPercent * 0 / _1546) - (investorPercent * 0 / _1546) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_1545] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_1545]
                        if not 10^12 * 0 / totalAllocPoint / mem[_1545]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _1546
                            mem[mem[64] + 64] = poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _1546, poolInfo[idx].field_768, idx);
                        else:
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 10^12 * 0 / totalAllocPoint / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 1000
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = _1546
                            mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _1546) - (devPercent * 10^12 * 0 / totalAllocPoint / _1546) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _1546) - (investorPercent * 10^12 * 0 / totalAllocPoint / _1546) / 1000) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, _1546, ((1000 * 10^12 * 0 / totalAllocPoint / _1546) - (devPercent * 10^12 * 0 / totalAllocPoint / _1546) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _1546) - (investorPercent * 10^12 * 0 / totalAllocPoint / _1546) / 1000) + poolInfo[idx].field_768, idx);
                else:
                    if (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) / block.timestamp - poolInfo[idx].field_512 != sub_4a7d91a1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_1545] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1545]
                            if not 0 / mem[_1545]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1546
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1546, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 0 / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1546
                                mem[mem[64] + 64] = ((1000 * 0 / _1546) - (devPercent * 0 / _1546) - (treasuryPercent * 0 / _1546) - (investorPercent * 0 / _1546) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1546, ((1000 * 0 / _1546) - (devPercent * 0 / _1546) - (treasuryPercent * 0 / _1546) - (investorPercent * 0 / _1546) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1545] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1545]
                            if not 10^12 * 0 / totalAllocPoint / mem[_1545]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1546
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1546, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 10^12 * 0 / totalAllocPoint / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1546
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _1546) - (devPercent * 10^12 * 0 / totalAllocPoint / _1546) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _1546) - (investorPercent * 10^12 * 0 / totalAllocPoint / _1546) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1546, ((1000 * 10^12 * 0 / totalAllocPoint / _1546) - (devPercent * 10^12 * 0 / totalAllocPoint / _1546) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _1546) - (investorPercent * 10^12 * 0 / totalAllocPoint / _1546) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_1545] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1545]
                            if not 0 / mem[_1545]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1546
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1546, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 0 / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1546
                                mem[mem[64] + 64] = ((1000 * 0 / _1546) - (devPercent * 0 / _1546) - (treasuryPercent * 0 / _1546) - (investorPercent * 0 / _1546) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1546, ((1000 * 0 / _1546) - (devPercent * 0 / _1546) - (treasuryPercent * 0 / _1546) - (investorPercent * 0 / _1546) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1545] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1545]
                            if not 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1546
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1546, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) / 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _1546
                                mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1546) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1546) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1546) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1546) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _1546, ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1546) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1546) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1546) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _1546) / 1000) + poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
    sub_4a7d91a1 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function rewarderBonusTokenInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    mem[0] = 19
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
            _224 = mem[128]
            require mem[128] <= test266151307()
            require mem[128] + 159 < ext_call.return_data[0] + 128
            _239 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require ceil32(mem[mem[128] + 128]) + 164 >= 132 and (2 * ceil32(return_data.size)) + ceil32(mem[mem[128] + 128]) + 164 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[mem[128] + 128]) + 164
            mem[(2 * ceil32(return_data.size)) + 132] = mem[mem[128] + 128]
            require ext_call.return_data[0] + 128 >= _239 + _224 + 160
            mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_239)] = mem[_224 + 160 len ceil32(_239)]
            if ceil32(_239) <= _239:
                mem[mem[64]] = address(ext_call.return_data[0])
                mem[mem[64] + 32] = 64
                _481 = mem[(2 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 96 len ceil32(_481)] = mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_481)]
                if ceil32(_481) > _481:
                    mem[_481 + mem[64] + 96] = 0
                return address(ext_call.return_data[0]), 64, mem[mem[64] + 64 len ceil32(_481) + 32]
            mem[_239 + (2 * ceil32(return_data.size)) + 164] = 0
            mem[mem[64]] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 64
            _482 = mem[(2 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 96 len ceil32(_482)] = mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_482)]
            if ceil32(_482) > _482:
                mem[_482 + mem[64] + 96] = 0
            return address(ext_call.return_data[0]), 64, mem[mem[64] + 64 len ceil32(_482) + 32]
    else:
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
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
            _226 = mem[(2 * ceil32(return_data.size)) + 164]
            require mem[(2 * ceil32(return_data.size)) + 164] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 195 < (2 * ceil32(return_data.size)) + return_data.size + 164
            _242 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133 and (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _242
            require return_data.size + 32 >= _242 + _226 + 64
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_242)] = mem[(2 * ceil32(return_data.size)) + _226 + 196 len ceil32(_242)]
            if ceil32(_242) > _242:
                mem[_242 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = 0
            mem[mem[64]] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = _242
            mem[mem[64] + 96 len ceil32(_242)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_242)]
            if ceil32(_242) > _242:
                mem[_242 + mem[64] + 96] = 0
            return address(ext_call.return_data[0]), Array(len=_242, data=mem[mem[64] + 96 len ceil32(_242)])
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
            mem[0] = 19
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3118 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3122 = mem[_3118]
                if not mem[_3118]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_3118] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3118]
                            if not 0 / mem[_3118]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3122
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3122, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 0 / mem[_3118] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3122
                                mem[mem[64] + 64] = ((1000 * 0 / _3122) - (devPercent * 0 / _3122) - (treasuryPercent * 0 / _3122) - (investorPercent * 0 / _3122) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3122, ((1000 * 0 / _3122) - (devPercent * 0 / _3122) - (treasuryPercent * 0 / _3122) - (investorPercent * 0 / _3122) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_3118] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3118]
                            if not 10^12 * 0 / totalAllocPoint / mem[_3118]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3122
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3122, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) / 10^12 * 0 / totalAllocPoint / mem[_3118] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3122
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3122) - (devPercent * 10^12 * 0 / totalAllocPoint / _3122) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3122) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3122) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3122, ((1000 * 10^12 * 0 / totalAllocPoint / _3122) - (devPercent * 10^12 * 0 / totalAllocPoint / _3122) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3122) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3122) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) / block.timestamp - poolInfo[idx].field_512 != sub_4a7d91a1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_3118] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3118]
                                if not 0 / mem[_3118]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3122
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3122, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 0 / mem[_3118] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3122
                                    mem[mem[64] + 64] = ((1000 * 0 / _3122) - (devPercent * 0 / _3122) - (treasuryPercent * 0 / _3122) - (investorPercent * 0 / _3122) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3122, ((1000 * 0 / _3122) - (devPercent * 0 / _3122) - (treasuryPercent * 0 / _3122) - (investorPercent * 0 / _3122) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_3118] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3118]
                                if not 10^12 * 0 / totalAllocPoint / mem[_3118]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3122
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3122, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) / 10^12 * 0 / totalAllocPoint / mem[_3118] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3118]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3122
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3122) - (devPercent * 10^12 * 0 / totalAllocPoint / _3122) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3122) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3122) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3122, ((1000 * 10^12 * 0 / totalAllocPoint / _3122) - (devPercent * 10^12 * 0 / totalAllocPoint / _3122) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3122) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3122) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_3118] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3118]
                                if not 0 / mem[_3118]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3122
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3122, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 0 / mem[_3118] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_3118]) - (devPercent * 0 / mem[_3118]) - (treasuryPercent * 0 / mem[_3118]) - (investorPercent * 0 / mem[_3118]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3122
                                    mem[mem[64] + 64] = ((1000 * 0 / _3122) - (devPercent * 0 / _3122) - (treasuryPercent * 0 / _3122) - (investorPercent * 0 / _3122) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3122, ((1000 * 0 / _3122) - (devPercent * 0 / _3122) - (treasuryPercent * 0 / _3122) - (investorPercent * 0 / _3122) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_3118] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3118]
                                if not 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3122
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3122, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) / 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3118]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3122
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3122) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3122) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3122) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3122) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3122, ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3122) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3122) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3122) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3122) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: rewarder must be contract or zero'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 19
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3124 = mem[_3120]
                if not mem[_3120]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_3120] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3120]
                            if not 0 / mem[_3120]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3124
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3124, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 0 / mem[_3120] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3124
                                mem[mem[64] + 64] = ((1000 * 0 / _3124) - (devPercent * 0 / _3124) - (treasuryPercent * 0 / _3124) - (investorPercent * 0 / _3124) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3124, ((1000 * 0 / _3124) - (devPercent * 0 / _3124) - (treasuryPercent * 0 / _3124) - (investorPercent * 0 / _3124) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_3120] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3120]
                            if not 10^12 * 0 / totalAllocPoint / mem[_3120]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3124
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3124, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) / 10^12 * 0 / totalAllocPoint / mem[_3120] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3124
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3124) - (devPercent * 10^12 * 0 / totalAllocPoint / _3124) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3124) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3124) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3124, ((1000 * 10^12 * 0 / totalAllocPoint / _3124) - (devPercent * 10^12 * 0 / totalAllocPoint / _3124) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3124) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3124) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) / block.timestamp - poolInfo[idx].field_512 != sub_4a7d91a1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_3120] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3120]
                                if not 0 / mem[_3120]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3124
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3124, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 0 / mem[_3120] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3124
                                    mem[mem[64] + 64] = ((1000 * 0 / _3124) - (devPercent * 0 / _3124) - (treasuryPercent * 0 / _3124) - (investorPercent * 0 / _3124) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3124, ((1000 * 0 / _3124) - (devPercent * 0 / _3124) - (treasuryPercent * 0 / _3124) - (investorPercent * 0 / _3124) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_3120] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3120]
                                if not 10^12 * 0 / totalAllocPoint / mem[_3120]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3124
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3124, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) / 10^12 * 0 / totalAllocPoint / mem[_3120] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3120]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3124
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3124) - (devPercent * 10^12 * 0 / totalAllocPoint / _3124) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3124) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3124) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3124, ((1000 * 10^12 * 0 / totalAllocPoint / _3124) - (devPercent * 10^12 * 0 / totalAllocPoint / _3124) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3124) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3124) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_3120] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3120]
                                if not 0 / mem[_3120]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3124
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3124, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 0 / mem[_3120] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_3120]) - (devPercent * 0 / mem[_3120]) - (treasuryPercent * 0 / mem[_3120]) - (investorPercent * 0 / mem[_3120]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3124
                                    mem[mem[64] + 64] = ((1000 * 0 / _3124) - (devPercent * 0 / _3124) - (treasuryPercent * 0 / _3124) - (investorPercent * 0 / _3124) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3124, ((1000 * 0 / _3124) - (devPercent * 0 / _3124) - (treasuryPercent * 0 / _3124) - (investorPercent * 0 / _3124) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_3120] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3120]
                                if not 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3124
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3124, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) / 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3120]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3124
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3124) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3124) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3124) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3124) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3124, ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3124) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3124) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3124) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3124) / 1000) + poolInfo[idx].field_768, idx);
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
        mem[32] = 21
        if stor21[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 19
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3199 = mem[_3183]
                if not mem[_3183]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_3183] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3183]
                            if not 0 / mem[_3183]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3199
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3199, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 0 / mem[_3183] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3199
                                mem[mem[64] + 64] = ((1000 * 0 / _3199) - (devPercent * 0 / _3199) - (treasuryPercent * 0 / _3199) - (investorPercent * 0 / _3199) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3199, ((1000 * 0 / _3199) - (devPercent * 0 / _3199) - (treasuryPercent * 0 / _3199) - (investorPercent * 0 / _3199) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_3183] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3183]
                            if not 10^12 * 0 / totalAllocPoint / mem[_3183]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3199
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3199, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) / 10^12 * 0 / totalAllocPoint / mem[_3183] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3199
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3199) - (devPercent * 10^12 * 0 / totalAllocPoint / _3199) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3199) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3199) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3199, ((1000 * 10^12 * 0 / totalAllocPoint / _3199) - (devPercent * 10^12 * 0 / totalAllocPoint / _3199) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3199) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3199) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) / block.timestamp - poolInfo[idx].field_512 != sub_4a7d91a1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_3183] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3183]
                                if not 0 / mem[_3183]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3199
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3199, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 0 / mem[_3183] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3199
                                    mem[mem[64] + 64] = ((1000 * 0 / _3199) - (devPercent * 0 / _3199) - (treasuryPercent * 0 / _3199) - (investorPercent * 0 / _3199) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3199, ((1000 * 0 / _3199) - (devPercent * 0 / _3199) - (treasuryPercent * 0 / _3199) - (investorPercent * 0 / _3199) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_3183] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3183]
                                if not 10^12 * 0 / totalAllocPoint / mem[_3183]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3199
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3199, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) / 10^12 * 0 / totalAllocPoint / mem[_3183] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3183]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3199
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3199) - (devPercent * 10^12 * 0 / totalAllocPoint / _3199) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3199) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3199) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3199, ((1000 * 10^12 * 0 / totalAllocPoint / _3199) - (devPercent * 10^12 * 0 / totalAllocPoint / _3199) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3199) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3199) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_3183] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3183]
                                if not 0 / mem[_3183]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3199
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3199, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 0 / mem[_3183] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_3183]) - (devPercent * 0 / mem[_3183]) - (treasuryPercent * 0 / mem[_3183]) - (investorPercent * 0 / mem[_3183]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3199
                                    mem[mem[64] + 64] = ((1000 * 0 / _3199) - (devPercent * 0 / _3199) - (treasuryPercent * 0 / _3199) - (investorPercent * 0 / _3199) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3199, ((1000 * 0 / _3199) - (devPercent * 0 / _3199) - (treasuryPercent * 0 / _3199) - (investorPercent * 0 / _3199) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_3183] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3183]
                                if not 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3199
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3199, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) / 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3183]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3199
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3199) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3199) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3199) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3199) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3199, ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3199) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3199) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3199) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3199) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: rewarder must be contract or zero'
        mem[0] = arg2
        mem[32] = 21
        if stor21[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 19
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3198 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3200 = mem[_3198]
                if not mem[_3198]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, devPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(badAddress)
                            call badAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_3198] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3198]
                            if not 0 / mem[_3198]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3200
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3200, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 0 / mem[_3198] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3200
                                mem[mem[64] + 64] = ((1000 * 0 / _3200) - (devPercent * 0 / _3200) - (treasuryPercent * 0 / _3200) - (investorPercent * 0 / _3200) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3200, ((1000 * 0 / _3200) - (devPercent * 0 / _3200) - (treasuryPercent * 0 / _3200) - (investorPercent * 0 / _3200) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_3198] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_3198]
                            if not 10^12 * 0 / totalAllocPoint / mem[_3198]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3200
                                mem[mem[64] + 64] = poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3200, poolInfo[idx].field_768, idx);
                            else:
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) / 10^12 * 0 / totalAllocPoint / mem[_3198] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) / 1000
                                poolInfo[idx].field_512 = block.timestamp
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _3200
                                mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3200) - (devPercent * 10^12 * 0 / totalAllocPoint / _3200) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3200) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3200) / 1000) + poolInfo[idx].field_768
                                emit UpdatePool(block.timestamp, _3200, ((1000 * 10^12 * 0 / totalAllocPoint / _3200) - (devPercent * 10^12 * 0 / totalAllocPoint / _3200) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3200) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3200) / 1000) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) / block.timestamp - poolInfo[idx].field_512 != sub_4a7d91a1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * 0 / totalAllocPoint / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_3198] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3198]
                                if not 0 / mem[_3198]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3200
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3200, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 0 / mem[_3198] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3200
                                    mem[mem[64] + 64] = ((1000 * 0 / _3200) - (devPercent * 0 / _3200) - (treasuryPercent * 0 / _3200) - (investorPercent * 0 / _3200) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3200, ((1000 * 0 / _3200) - (devPercent * 0 / _3200) - (treasuryPercent * 0 / _3200) - (investorPercent * 0 / _3200) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_3198] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3198]
                                if not 10^12 * 0 / totalAllocPoint / mem[_3198]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3200
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3200, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) / 10^12 * 0 / totalAllocPoint / mem[_3198] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_3198]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3200
                                    mem[mem[64] + 64] = ((1000 * 10^12 * 0 / totalAllocPoint / _3200) - (devPercent * 10^12 * 0 / totalAllocPoint / _3200) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3200) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3200) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3200, ((1000 * 10^12 * 0 / totalAllocPoint / _3200) - (devPercent * 10^12 * 0 / totalAllocPoint / _3200) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / _3200) - (investorPercent * 10^12 * 0 / totalAllocPoint / _3200) / 1000) + poolInfo[idx].field_768, idx);
                        else:
                            if (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / (block.timestamp * sub_4a7d91a1) - (poolInfo[idx].field_512 * sub_4a7d91a1) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                if devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                if treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                if investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(badAddress)
                                call badAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_3198] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3198]
                                if not 0 / mem[_3198]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3200
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3200, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 0 / mem[_3198] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_3198]) - (devPercent * 0 / mem[_3198]) - (treasuryPercent * 0 / mem[_3198]) - (investorPercent * 0 / mem[_3198]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3200
                                    mem[mem[64] + 64] = ((1000 * 0 / _3200) - (devPercent * 0 / _3200) - (treasuryPercent * 0 / _3200) - (investorPercent * 0 / _3200) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3200, ((1000 * 0 / _3200) - (devPercent * 0 / _3200) - (treasuryPercent * 0 / _3200) - (investorPercent * 0 / _3200) / 1000) + poolInfo[idx].field_768, idx);
                            else:
                                if 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_3198] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_3198]
                                if not 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3200
                                    mem[mem[64] + 64] = poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3200, poolInfo[idx].field_768, idx);
                                else:
                                    if (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) / 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) / 1000) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / mem[_3198]) / 1000
                                    poolInfo[idx].field_512 = block.timestamp
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _3200
                                    mem[mem[64] + 64] = ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3200) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3200) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3200) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3200) / 1000) + poolInfo[idx].field_768
                                    emit UpdatePool(block.timestamp, _3200, ((1000 * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3200) - (devPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3200) - (treasuryPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3200) - (investorPercent * 10^12 * (block.timestamp * sub_4a7d91a1 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4a7d91a1 * poolInfo[idx].field_256) / totalAllocPoint / _3200) / 1000) + poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor66DE[stor19.length] = arg1
    if block.timestamp > startTimestamp:
        stor66DE[stor19.length] = block.timestamp
    else:
        stor66DE[stor19.length] = startTimestamp
    stor66DE[stor19.length] = 0
    stor66DE[stor19.length] = arg3
    if not stor21[address(arg2)]:
        stor20.length++
        stor20[stor20.length].field_0 = arg2
        stor20[stor20.length].field_160 = 0
        stor21[address(arg2)] = stor20.length
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0x4b16bd24: arg1, poolInfo.length - 1, arg2, arg3
}



}
