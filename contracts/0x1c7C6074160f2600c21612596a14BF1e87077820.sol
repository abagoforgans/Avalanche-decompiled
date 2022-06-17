contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address stor1;
address joeAddress;
address devAddr;
address treasuryAddr;
address investorAddr;
address sub_0c418998Address;
uint256 joePerSec;
uint256 devPercent;
uint256 treasuryPercent;
uint256 investorPercent;
mapping of uint256 depositTime;
array of struct poolInfo;
array of struct stor13;
mapping of uint256 stor14;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;

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
    require arg1 == arg1
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

function depositTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositTime[arg1]
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

function getLatestPrice() payable {
    require ext_code.size(stor1)
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return (ext_call.return_data[32] / 100 * 10^6)
}

function setDevPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setDevPercent: invalid percent value'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setDevPercent: invalid percent value'
    if treasuryPercent + arg1 + investorPercent > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setDevPercent: total percent over max'
    devPercent = arg1
}

function setInvestorPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setInvestorPercent: invalid percent value'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setInvestorPercent: invalid percent value'
    if devPercent + arg1 + treasuryPercent > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setInvestorPercent: total percent over max'
    investorPercent = arg1
}

function setTreasuryPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setTreasuryPercent: invalid percent value'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setTreasuryPercent: invalid percent value'
    if devPercent + arg1 + investorPercent > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setTreasuryPercent: total percent over max'
    treasuryPercent = arg1
}

function rewarderBonusTokenInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    mem[0] = 12
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
            return address(ext_call.return_data[0]), 64, 3, '???', 0
        if ext_call.return_data[0] < 64:
            if ext_call.return_data[0] != 32:
                return address(ext_call.return_data[0]), 64, 3, '???', 0
            require 0 < ext_call.return_data[0]
            require 0 < ext_call.return_data[0]
            return address(ext_call.return_data[0]), 64, 0, None
        require ext_call.return_data[0] >= 32
        _215 = mem[128]
        require mem[128] <= test266151307()
        require mem[128] + 159 < ext_call.return_data[0] + 128
        _227 = mem[mem[128] + 128]
        require mem[mem[128] + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + ceil32(mem[mem[128] + 128]) + 164 <= test266151307() and ceil32(mem[mem[128] + 128]) + 164 >= 132
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[mem[128] + 128]) + 164
        mem[(2 * ceil32(return_data.size)) + 132] = mem[mem[128] + 128]
        require _215 + _227 + 160 <= ext_call.return_data[0] + 128
        mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_227)] = mem[_215 + 160 len ceil32(_227)]
        if ceil32(_227) <= _227:
            mem[mem[64]] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 64
            _395 = mem[(2 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 96 len ceil32(_395)] = mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_395)]
            if ceil32(_395) > _395:
                mem[mem[64] + _395 + 96] = 0
            return address(ext_call.return_data[0]), 64, mem[mem[64] + 64 len ceil32(_395) + 32]
        mem[(2 * ceil32(return_data.size)) + _227 + 164] = 0
        mem[mem[64]] = address(ext_call.return_data[0])
        mem[mem[64] + 32] = 64
        _399 = mem[(2 * ceil32(return_data.size)) + 132]
        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 132]
        mem[mem[64] + 96 len ceil32(_399)] = mem[(2 * ceil32(return_data.size)) + 164 len ceil32(_399)]
        if ceil32(_399) > _399:
            mem[mem[64] + _399 + 96] = 0
        return address(ext_call.return_data[0]), 64, mem[mem[64] + 64 len ceil32(_399) + 32]
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
    mem[(2 * ceil32(return_data.size)) + 132] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        return address(ext_call.return_data[0]), 64, 3, '???', 0
    if return_data.size < 64:
        if 32 != return_data.size:
            return address(ext_call.return_data[0]), 64, 3, '???', 0
        require 0 < return_data.size
        require 0 < return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 64
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 261] = 0
        return address(ext_call.return_data[0]), 
               Array(len=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])])
    require return_data.size >= 32
    _217 = mem[(2 * ceil32(return_data.size)) + 164]
    require mem[(2 * ceil32(return_data.size)) + 164] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 195 < (2 * ceil32(return_data.size)) + return_data.size + 164
    _228 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 164] + 164]) + 165
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _228
    require _217 + _228 + 64 <= return_data.size + 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_228)] = mem[(2 * ceil32(return_data.size)) + _217 + 196 len ceil32(_228)]
    if ceil32(_228) > _228:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _228 + 165] = 0
    mem[mem[64]] = address(ext_call.return_data[0])
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _228
    mem[mem[64] + 96 len ceil32(_228)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_228)]
    if ceil32(_228) > _228:
        mem[mem[64] + _228 + 96] = 0
    return address(ext_call.return_data[0]), Array(len=_228, data=mem[mem[64] + 96 len ceil32(_228)])
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
                    require ext_code.size(joeAddress)
                    call joeAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0
                else:
                    require 0 / totalAllocPoint
                    if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(joeAddress)
                    call joeAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint * devPercent / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(joeAddress)
                    call joeAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddr, 0
                else:
                    require 0 / totalAllocPoint
                    if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(joeAddress)
                    call joeAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(joeAddress)
                    call joeAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args investorAddr, 0
                else:
                    require 0 / totalAllocPoint
                    if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(joeAddress)
                    call joeAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    require ext_code.size(joeAddress)
                    call joeAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                else:
                    require 0 / totalAllocPoint
                    if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(joeAddress)
                    call joeAddress.0x40c10f19 with:
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
                    else:
                        require 0 / ext_call.return_data[0]
                        if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfo[arg1].field_768 + ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
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
                        if (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 10^12 * 0 / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfo[arg1].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000
            else:
                require block.timestamp - poolInfo[arg1].field_512
                if (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) / block.timestamp - poolInfo[arg1].field_512 != joePerSec:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require 0 / totalAllocPoint
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
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
                        else:
                            require 0 / ext_call.return_data[0]
                            if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_768 + ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
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
                            if (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 10^12 * 0 / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) / 1000
                else:
                    require (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec)
                    if (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) != poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint * devPercent / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        require (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint * treasuryPercent / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint * treasuryPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        require (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint * investorPercent / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint * investorPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
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
                        else:
                            require 0 / ext_call.return_data[0]
                            if (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_768 + ((1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 0 / ext_call.return_data[0]) - (devPercent * 0 / ext_call.return_data[0]) - (treasuryPercent * 0 / ext_call.return_data[0]) - (investorPercent * 0 / ext_call.return_data[0]) / 1000
                    else:
                        require (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]:
                            if poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_768 + ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) / 1000
            poolInfo[arg1].field_512 = block.timestamp
            emit UpdatePool(poolInfo[arg1].field_512, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 12
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
            require mem[_1539] == mem[_1539]
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
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require 0 / totalAllocPoint
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
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
                        else:
                            require 0 / mem[_1539]
                            if (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 0 / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_1539] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_1539]
                        if not 10^12 * 0 / totalAllocPoint / mem[_1539]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * 0 / totalAllocPoint / mem[_1539]
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 10^12 * 0 / totalAllocPoint / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 1000
                else:
                    require block.timestamp - poolInfo[idx].field_512
                    if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
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
                            else:
                                require 0 / mem[_1539]
                                if (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 0 / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1539] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1539]
                            if not 10^12 * 0 / totalAllocPoint / mem[_1539]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_1539]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 10^12 * 0 / totalAllocPoint / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1539]) / 1000
                    else:
                        require (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec)
                        if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_1539] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1539]
                            if not 0 / mem[_1539]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_1539]
                                if (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 0 / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1539]) - (devPercent * 0 / mem[_1539]) - (treasuryPercent * 0 / mem[_1539]) - (investorPercent * 0 / mem[_1539]) / 1000
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1539] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1539]
                            if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]
                                if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1539]) / 1000
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = poolInfo[idx].field_512
                mem[mem[64] + 32] = _1540
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(poolInfo[idx].field_512, _1540, poolInfo[idx].field_768, idx);
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
        mem[0] = 12
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
            require mem[_1545] == mem[_1545]
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
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint * devPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        require 0 / totalAllocPoint
                        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(joeAddress)
                        call joeAddress.0x40c10f19 with:
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
                        else:
                            require 0 / mem[_1545]
                            if (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 0 / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if mem[_1545] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require mem[_1545]
                        if not 10^12 * 0 / totalAllocPoint / mem[_1545]:
                            if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require 10^12 * 0 / totalAllocPoint / mem[_1545]
                            if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 10^12 * 0 / totalAllocPoint / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 1000) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 1000
                else:
                    require block.timestamp - poolInfo[idx].field_512
                    if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
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
                            else:
                                require 0 / mem[_1545]
                                if (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 0 / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1545] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1545]
                            if not 10^12 * 0 / totalAllocPoint / mem[_1545]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_1545]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 10^12 * 0 / totalAllocPoint / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1545]) / 1000
                    else:
                        require (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec)
                        if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            if mem[_1545] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1545]
                            if not 0 / mem[_1545]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_1545]
                                if (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 0 / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1545]) - (devPercent * 0 / mem[_1545]) - (treasuryPercent * 0 / mem[_1545]) - (investorPercent * 0 / mem[_1545]) / 1000
                        else:
                            require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1545] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1545]
                            if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]
                                if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1545]) / 1000
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = poolInfo[idx].field_512
                mem[mem[64] + 32] = _1546
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(poolInfo[idx].field_512, _1546, poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
    joePerSec = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, address arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg3) > 0:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 12
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1616 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1626 = mem[_1616]
                require mem[_1616] == mem[_1616]
                if not mem[_1616]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_1616] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1616]
                            if not 0 / mem[_1616]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_1616]
                                if (1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 0 / mem[_1616] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1616] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1616]
                            if not 10^12 * 0 / totalAllocPoint / mem[_1616]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_1616]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) / 10^12 * 0 / totalAllocPoint / mem[_1616] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) / 1000
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint * devPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                require 0 / totalAllocPoint
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_1616] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1616]
                                if not 0 / mem[_1616]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 0 / mem[_1616]
                                    if (1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 0 / mem[_1616] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 1000
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1616] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1616]
                                if not 10^12 * 0 / totalAllocPoint / mem[_1616]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 10^12 * 0 / totalAllocPoint / mem[_1616]
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) / 10^12 * 0 / totalAllocPoint / mem[_1616] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1616]) / 1000
                        else:
                            require (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec)
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_1616] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1616]
                                if not 0 / mem[_1616]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 0 / mem[_1616]
                                    if (1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 0 / mem[_1616] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_1616]) - (devPercent * 0 / mem[_1616]) - (treasuryPercent * 0 / mem[_1616]) - (investorPercent * 0 / mem[_1616]) / 1000
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1616] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1616]
                                if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]
                                    if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1616]) / 1000
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = poolInfo[idx].field_512
                    mem[mem[64] + 32] = _1626
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(poolInfo[idx].field_512, _1626, poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: rewarder must be contract or zero'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 12
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1619 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1627 = mem[_1619]
                require mem[_1619] == mem[_1619]
                if not mem[_1619]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_1619] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1619]
                            if not 0 / mem[_1619]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_1619]
                                if (1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 0 / mem[_1619] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1619] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1619]
                            if not 10^12 * 0 / totalAllocPoint / mem[_1619]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_1619]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) / 10^12 * 0 / totalAllocPoint / mem[_1619] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) / 1000
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint * devPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                require 0 / totalAllocPoint
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_1619] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1619]
                                if not 0 / mem[_1619]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 0 / mem[_1619]
                                    if (1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 0 / mem[_1619] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 1000
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1619] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1619]
                                if not 10^12 * 0 / totalAllocPoint / mem[_1619]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 10^12 * 0 / totalAllocPoint / mem[_1619]
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) / 10^12 * 0 / totalAllocPoint / mem[_1619] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1619]) / 1000
                        else:
                            require (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec)
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_1619] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1619]
                                if not 0 / mem[_1619]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 0 / mem[_1619]
                                    if (1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 0 / mem[_1619] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_1619]) - (devPercent * 0 / mem[_1619]) - (treasuryPercent * 0 / mem[_1619]) - (investorPercent * 0 / mem[_1619]) / 1000
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1619] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1619]
                                if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]
                                    if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1619]) / 1000
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = poolInfo[idx].field_512
                    mem[mem[64] + 32] = _1627
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(poolInfo[idx].field_512, _1627, poolInfo[idx].field_768, idx);
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
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg2) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: LP token must be a valid contract'
    if ext_code.size(arg3) > 0:
        mem[0] = arg2
        mem[32] = 14
        if stor14[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 12
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1294 = mem[_1288]
                require mem[_1288] == mem[_1288]
                if not mem[_1288]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_1288] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1288]
                            if not 0 / mem[_1288]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_1288]
                                if (1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 0 / mem[_1288] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1288] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1288]
                            if not 10^12 * 0 / totalAllocPoint / mem[_1288]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_1288]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) / 10^12 * 0 / totalAllocPoint / mem[_1288] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) / 1000
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint * devPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                require 0 / totalAllocPoint
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_1288] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1288]
                                if not 0 / mem[_1288]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 0 / mem[_1288]
                                    if (1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 0 / mem[_1288] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 1000
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1288] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1288]
                                if not 10^12 * 0 / totalAllocPoint / mem[_1288]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 10^12 * 0 / totalAllocPoint / mem[_1288]
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) / 10^12 * 0 / totalAllocPoint / mem[_1288] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1288]) / 1000
                        else:
                            require (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec)
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_1288] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1288]
                                if not 0 / mem[_1288]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 0 / mem[_1288]
                                    if (1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 0 / mem[_1288] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_1288]) - (devPercent * 0 / mem[_1288]) - (treasuryPercent * 0 / mem[_1288]) - (investorPercent * 0 / mem[_1288]) / 1000
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1288] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1288]
                                if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]
                                    if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1288]) / 1000
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = poolInfo[idx].field_512
                    mem[mem[64] + 32] = _1294
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(poolInfo[idx].field_512, _1294, poolInfo[idx].field_768, idx);
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: rewarder must be contract or zero'
        mem[0] = arg2
        mem[32] = 14
        if stor14[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 12
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1299 = mem[_1289]
                require mem[_1289] == mem[_1289]
                if not mem[_1289]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint * devPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            require 0 / totalAllocPoint
                            if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(joeAddress)
                            call joeAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if mem[_1289] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1289]
                            if not 0 / mem[_1289]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 0 / mem[_1289]
                                if (1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 0 / mem[_1289] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 1000
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_1289] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_1289]
                            if not 10^12 * 0 / totalAllocPoint / mem[_1289]:
                                if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require 10^12 * 0 / totalAllocPoint / mem[_1289]
                                if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) / 10^12 * 0 / totalAllocPoint / mem[_1289] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) / 1000) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) / 1000
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) / block.timestamp - poolInfo[idx].field_512 != joePerSec:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * devPercent / 0 / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0 / totalAllocPoint * devPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * treasuryPercent / 0 / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0 / totalAllocPoint * treasuryPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 0 / totalAllocPoint * investorPercent / 0 / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0 / totalAllocPoint * investorPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                require 0 / totalAllocPoint
                                if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if mem[_1289] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1289]
                                if not 0 / mem[_1289]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 0 / mem[_1289]
                                    if (1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 0 / mem[_1289] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 1000
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1289] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1289]
                                if not 10^12 * 0 / totalAllocPoint / mem[_1289]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 10^12 * 0 / totalAllocPoint / mem[_1289]
                                    if (1000 * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) / 10^12 * 0 / totalAllocPoint / mem[_1289] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * 0 / totalAllocPoint / mem[_1289]) / 1000
                        else:
                            require (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec)
                            if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / (block.timestamp * joePerSec) - (poolInfo[idx].field_512 * joePerSec) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != devPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * devPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != treasuryPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * treasuryPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != investorPercent:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args investorAddr, (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint * investorPercent / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require ext_code.size(joeAddress)
                                call joeAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (1000 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if mem[_1289] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1289]
                                if not 0 / mem[_1289]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 0 / mem[_1289]
                                    if (1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 0 / mem[_1289] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 0 / mem[_1289]) - (devPercent * 0 / mem[_1289]) - (treasuryPercent * 0 / mem[_1289]) - (investorPercent * 0 / mem[_1289]) / 1000
                            else:
                                require (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1289] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_1289]
                                if not 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]:
                                    if poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]
                                    if (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) / 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289] != -devPercent + -treasuryPercent + -investorPercent + 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_768 + ((1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) / 1000) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (1000 * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (devPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (treasuryPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) - (investorPercent * 10^12 * (block.timestamp * joePerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * joePerSec * poolInfo[idx].field_256) / totalAllocPoint / mem[_1289]) / 1000
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = poolInfo[idx].field_512
                    mem[mem[64] + 32] = _1299
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(poolInfo[idx].field_512, _1299, poolInfo[idx].field_768, idx);
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
    poolInfo[poolInfo.length].field_1024 = arg3
    if not stor14[address(arg2)]:
        stor13.length++
        stor13[stor13.length].field_0 = arg2
        stor13[stor13.length].field_160 = 0
        stor14[address(arg2)] = stor13.length
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0x4b16bd24: arg1, poolInfo.length - 1, arg2, arg3
}

function pendingTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < poolInfo.length
    mem[32] = sha3(arg1, 15)
    mem[100] = this.address
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                require ext_call.return_data[0] >= 32
                _5764 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6066 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5764 + _6066 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6066)] = mem[_5764 + 160 len ceil32(_6066)]
                if ceil32(_6066) <= _6066:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11834 = mem[_11658]
                    require mem[_11658] == mem[_11658]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12186 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12186)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12186)]
                    if ceil32(_12186) > _12186:
                        mem[mem[64] + _12186 + 160] = 0
                    mem[mem[64] + 96] = _11834
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11834,
                           mem[mem[64] + 128 len ceil32(_12186) + 32]
                mem[(4 * ceil32(return_data.size)) + _6066 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11746 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11922 = mem[_11746]
                require mem[_11746] == mem[_11746]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12274 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12274)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12274)]
                if ceil32(_12274) > _12274:
                    mem[mem[64] + _12274 + 160] = 0
                mem[mem[64] + 96] = _11922
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11922,
                       mem[mem[64] + 128 len ceil32(_12274) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5766 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6067 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6067
            require _5766 + _6067 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6067)] = mem[(4 * ceil32(return_data.size)) + _5766 + 196 len ceil32(_6067)]
            if ceil32(_6067) <= _6067:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11835 = mem[_11659]
                require mem[_11659] == mem[_11659]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6067
                mem[mem[64] + 160 len ceil32(_6067)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6067)]
                if ceil32(_6067) > _6067:
                    mem[mem[64] + _6067 + 160] = 0
                mem[mem[64] + 96] = _11835
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6067, data=mem[mem[64] + 160 len ceil32(_6067)]),
                       _11835
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6067 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11747 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11923 = mem[_11747]
            require mem[_11747] == mem[_11747]
            mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6067
            mem[mem[64] + 160 len ceil32(_6067)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6067)]
            if ceil32(_6067) > _6067:
                mem[mem[64] + _6067 + 160] = 0
            mem[mem[64] + 96] = _11923
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6067, data=mem[mem[64] + 160 len ceil32(_6067)]),
                   _11923
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 96] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        require arg1 < poolInfo.length
        mem[0] = 12
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 4
        mem[64] = (4 * ceil32(return_data.size)) + 132
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
        mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
        mem[(4 * ceil32(return_data.size)) + 136] = 0
        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if ext_call.return_data[0] < 64:
                if ext_call.return_data[0] != 32:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < ext_call.return_data[0]
                require 0 < ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       0,
                       None
            require ext_call.return_data[0] >= 32
            _5758 = 0, mem[132 len 28]
            require 0, mem[132 len 28] <= test266151307()
            require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
            _6064 = mem[0, mem[132 len 28] + 128]
            require mem[0, mem[132 len 28] + 128] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
            mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
            require _5758 + _6064 + 160 <= ext_call.return_data[0] + 128
            mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6064)] = mem[_5758 + 160 len ceil32(_6064)]
            if ceil32(_6064) <= _6064:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11654 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11830 = mem[_11654]
                require mem[_11654] == mem[_11654]
                mem[mem[64]] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12182 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12182)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12182)]
                if ceil32(_12182) > _12182:
                    mem[mem[64] + _12182 + 160] = 0
                mem[mem[64] + 96] = _11830
                return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11830,
                       mem[mem[64] + 128 len ceil32(_12182) + 32]
            mem[(4 * ceil32(return_data.size)) + _6064 + 164] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11742 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11918 = mem[_11742]
            require mem[_11742] == mem[_11742]
            mem[mem[64]] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            _12270 = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 160 len ceil32(_12270)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12270)]
            if ceil32(_12270) > _12270:
                mem[mem[64] + _12270 + 160] = 0
            mem[mem[64] + 96] = _11918
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   _11918,
                   mem[mem[64] + 128 len ceil32(_12270) + 32]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
        mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   3,
                   '???',
                   0
        if return_data.size < 64:
            if 32 != return_data.size:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            require 0 < return_data.size
            require 0 < return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
            if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                   ext_call.return_data[0]
        require return_data.size >= 32
        _5760 = mem[(4 * ceil32(return_data.size)) + 164]
        require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
        _6065 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6065
        require _5760 + _6065 + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6065)] = mem[(4 * ceil32(return_data.size)) + _5760 + 196 len ceil32(_6065)]
        if ceil32(_6065) <= _6065:
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11655 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11831 = mem[_11655]
            require mem[_11655] == mem[_11655]
            mem[mem[64]] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6065
            mem[mem[64] + 160 len ceil32(_6065)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6065)]
            if ceil32(_6065) > _6065:
                mem[mem[64] + _6065 + 160] = 0
            mem[mem[64] + 96] = _11831
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6065, data=mem[mem[64] + 160 len ceil32(_6065)]),
                   _11831
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6065 + 165] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11743 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11919 = mem[_11743]
        require mem[_11743] == mem[_11743]
        mem[mem[64]] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _6065
        mem[mem[64] + 160 len ceil32(_6065)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6065)]
        if ceil32(_6065) > _6065:
            mem[mem[64] + _6065 + 160] = 0
        mem[mem[64] + 96] = _11919
        return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_6065, data=mem[mem[64] + 160 len ceil32(_6065)]),
               _11919
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                require ext_call.return_data[0] >= 32
                _5776 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6070 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5776 + _6070 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6070)] = mem[_5776 + 160 len ceil32(_6070)]
                if ceil32(_6070) <= _6070:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11666 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11842 = mem[_11666]
                    require mem[_11666] == mem[_11666]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12194 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12194)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12194)]
                    if ceil32(_12194) > _12194:
                        mem[mem[64] + _12194 + 160] = 0
                    mem[mem[64] + 96] = _11842
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11842,
                           mem[mem[64] + 128 len ceil32(_12194) + 32]
                mem[(4 * ceil32(return_data.size)) + _6070 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11754 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11930 = mem[_11754]
                require mem[_11754] == mem[_11754]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12282 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12282)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12282)]
                if ceil32(_12282) > _12282:
                    mem[mem[64] + _12282 + 160] = 0
                mem[mem[64] + 96] = _11930
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11930,
                       mem[mem[64] + 128 len ceil32(_12282) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5778 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6071 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6071
            require _5778 + _6071 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6071)] = mem[(4 * ceil32(return_data.size)) + _5778 + 196 len ceil32(_6071)]
            if ceil32(_6071) <= _6071:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11843 = mem[_11667]
                require mem[_11667] == mem[_11667]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6071
                mem[mem[64] + 160 len ceil32(_6071)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6071)]
                if ceil32(_6071) > _6071:
                    mem[mem[64] + _6071 + 160] = 0
                mem[mem[64] + 96] = _11843
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6071, data=mem[mem[64] + 160 len ceil32(_6071)]),
                       _11843
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6071 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11755 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11931 = mem[_11755]
            require mem[_11755] == mem[_11755]
            mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6071
            mem[mem[64] + 160 len ceil32(_6071)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6071)]
            if ceil32(_6071) > _6071:
                mem[mem[64] + _6071 + 160] = 0
            mem[mem[64] + 96] = _11931
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6071, data=mem[mem[64] + 160 len ceil32(_6071)]),
                   _11931
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 96] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        require arg1 < poolInfo.length
        mem[0] = 12
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 4
        mem[64] = (4 * ceil32(return_data.size)) + 132
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
        mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
        mem[(4 * ceil32(return_data.size)) + 136] = 0
        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if ext_call.return_data[0] < 64:
                if ext_call.return_data[0] != 32:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < ext_call.return_data[0]
                require 0 < ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       0,
                       None
            require ext_call.return_data[0] >= 32
            _5770 = 0, mem[132 len 28]
            require 0, mem[132 len 28] <= test266151307()
            require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
            _6068 = mem[0, mem[132 len 28] + 128]
            require mem[0, mem[132 len 28] + 128] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
            mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
            require _5770 + _6068 + 160 <= ext_call.return_data[0] + 128
            mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6068)] = mem[_5770 + 160 len ceil32(_6068)]
            if ceil32(_6068) <= _6068:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11838 = mem[_11662]
                require mem[_11662] == mem[_11662]
                mem[mem[64]] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12190 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12190)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12190)]
                if ceil32(_12190) > _12190:
                    mem[mem[64] + _12190 + 160] = 0
                mem[mem[64] + 96] = _11838
                return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11838,
                       mem[mem[64] + 128 len ceil32(_12190) + 32]
            mem[(4 * ceil32(return_data.size)) + _6068 + 164] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11750 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11926 = mem[_11750]
            require mem[_11750] == mem[_11750]
            mem[mem[64]] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            _12278 = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 160 len ceil32(_12278)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12278)]
            if ceil32(_12278) > _12278:
                mem[mem[64] + _12278 + 160] = 0
            mem[mem[64] + 96] = _11926
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   _11926,
                   mem[mem[64] + 128 len ceil32(_12278) + 32]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
        mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   3,
                   '???',
                   0
        if return_data.size < 64:
            if 32 != return_data.size:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            require 0 < return_data.size
            require 0 < return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
            if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                   ext_call.return_data[0]
        require return_data.size >= 32
        _5772 = mem[(4 * ceil32(return_data.size)) + 164]
        require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
        _6069 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6069
        require _5772 + _6069 + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6069)] = mem[(4 * ceil32(return_data.size)) + _5772 + 196 len ceil32(_6069)]
        if ceil32(_6069) <= _6069:
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11839 = mem[_11663]
            require mem[_11663] == mem[_11663]
            mem[mem[64]] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6069
            mem[mem[64] + 160 len ceil32(_6069)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6069)]
            if ceil32(_6069) > _6069:
                mem[mem[64] + _6069 + 160] = 0
            mem[mem[64] + 96] = _11839
            return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6069, data=mem[mem[64] + 160 len ceil32(_6069)]),
                   _11839
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6069 + 165] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11751 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11927 = mem[_11751]
        require mem[_11751] == mem[_11751]
        mem[mem[64]] = (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _6069
        mem[mem[64] + 160 len ceil32(_6069)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6069)]
        if ceil32(_6069) > _6069:
            mem[mem[64] + _6069 + 160] = 0
        mem[mem[64] + 96] = _11927
        return (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_6069, data=mem[mem[64] + 160 len ceil32(_6069)]),
               _11927
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
                if not poolInfo[arg1].field_1024:
                    mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                    mem[ceil32(return_data.size) + 128] = 0
                    mem[ceil32(return_data.size) + 160] = 128
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           0,
                           128,
                           0,
                           ext_call.return_data[0],
                           mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                require arg1 < poolInfo.length
                mem[0] = 12
                if not poolInfo[arg1].field_1024:
                    mem[ceil32(return_data.size) + 100] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                    mem[(2 * ceil32(return_data.size)) + 128] = 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 128
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           0,
                           128,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.rewardToken() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.rewardToken() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 96] = 4
                mem[64] = (4 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
                mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
                mem[(4 * ceil32(return_data.size)) + 136] = 0
                staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    if ext_call.return_data[0] < 64:
                        if ext_call.return_data[0] != 32:
                            require ext_code.size(poolInfo[arg1].field_1024)
                            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                        require 0 < ext_call.return_data[0]
                        require 0 < ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                    require ext_call.return_data[0] >= 32
                    _5884 = 0, mem[132 len 28]
                    require 0, mem[132 len 28] <= test266151307()
                    require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                    _6106 = mem[0, mem[132 len 28] + 128]
                    require mem[0, mem[132 len 28] + 128] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                    mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                    require _5884 + _6106 + 160 <= ext_call.return_data[0] + 128
                    mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6106)] = mem[_5884 + 160 len ceil32(_6106)]
                    if ceil32(_6106) <= _6106:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11738 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11914 = mem[_11738]
                        require mem[_11738] == mem[_11738]
                        mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                        mem[mem[64] + 32] = address(ext_call.return_data[0])
                        mem[mem[64] + 64] = 128
                        _12266 = mem[(4 * ceil32(return_data.size)) + 132]
                        mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                        mem[mem[64] + 160 len ceil32(_12266)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12266)]
                        if ceil32(_12266) > _12266:
                            mem[mem[64] + _12266 + 160] = 0
                        mem[mem[64] + 96] = _11914
                        return -userInfo[arg1][address(arg2)].field_256, 
                               address(ext_call.return_data[0]),
                               128,
                               _11914,
                               mem[mem[64] + 128 len ceil32(_12266) + 32]
                    mem[(4 * ceil32(return_data.size)) + _6106 + 164] = 0
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11826 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12002 = mem[_11826]
                    require mem[_11826] == mem[_11826]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12354 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12354)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12354)]
                    if ceil32(_12354) > _12354:
                        mem[mem[64] + _12354 + 160] = 0
                    mem[mem[64] + 96] = _12002
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _12002,
                           mem[mem[64] + 128 len ceil32(_12354) + 32]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
                mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
                mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if return_data.size < 64:
                    if 32 != return_data.size:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < return_data.size
                    require 0 < return_data.size
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                           ext_call.return_data[0]
                require return_data.size >= 32
                _5886 = mem[(4 * ceil32(return_data.size)) + 164]
                require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
                _6107 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6107
                require _5886 + _6107 + 64 <= return_data.size + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6107)] = mem[(4 * ceil32(return_data.size)) + _5886 + 196 len ceil32(_6107)]
                if ceil32(_6107) <= _6107:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11739 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11915 = mem[_11739]
                    require mem[_11739] == mem[_11739]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = _6107
                    mem[mem[64] + 160 len ceil32(_6107)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6107)]
                    if ceil32(_6107) > _6107:
                        mem[mem[64] + _6107 + 160] = 0
                    mem[mem[64] + 96] = _11915
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           Array(len=_6107, data=mem[mem[64] + 160 len ceil32(_6107)]),
                           _11915
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6107 + 165] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11827 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12003 = mem[_11827]
                require mem[_11827] == mem[_11827]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6107
                mem[mem[64] + 160 len ceil32(_6107)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6107)]
                if ceil32(_6107) > _6107:
                    mem[mem[64] + _6107 + 160] = 0
                mem[mem[64] + 96] = _12003
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6107, data=mem[mem[64] + 160 len ceil32(_6107)]),
                       _12003
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                               address(ext_call.return_data[0]),
                               128,
                               ext_call.return_data[0],
                               3,
                               '???',
                               0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           0,
                           None
                require ext_call.return_data[0] >= 32
                _5878 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6104 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5878 + _6104 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6104)] = mem[_5878 + 160 len ceil32(_6104)]
                if ceil32(_6104) <= _6104:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11910 = mem[_11734]
                    require mem[_11734] == mem[_11734]
                    mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12262 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12262)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12262)]
                    if ceil32(_12262) > _12262:
                        mem[mem[64] + _12262 + 160] = 0
                    mem[mem[64] + 96] = _11910
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11910,
                           mem[mem[64] + 128 len ceil32(_12262) + 32]
                mem[(4 * ceil32(return_data.size)) + _6104 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11998 = mem[_11822]
                require mem[_11822] == mem[_11822]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12350 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12350)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12350)]
                if ceil32(_12350) > _12350:
                    mem[mem[64] + _12350 + 160] = 0
                mem[mem[64] + 96] = _11998
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11998,
                       mem[mem[64] + 128 len ceil32(_12350) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5880 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6105 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6105
            require _5880 + _6105 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6105)] = mem[(4 * ceil32(return_data.size)) + _5880 + 196 len ceil32(_6105)]
            if ceil32(_6105) <= _6105:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11735 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11911 = mem[_11735]
                require mem[_11735] == mem[_11735]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6105
                mem[mem[64] + 160 len ceil32(_6105)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6105)]
                if ceil32(_6105) > _6105:
                    mem[mem[64] + _6105 + 160] = 0
                mem[mem[64] + 96] = _11911
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6105, data=mem[mem[64] + 160 len ceil32(_6105)]),
                       _11911
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6105 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11823 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11999 = mem[_11823]
            require mem[_11823] == mem[_11823]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6105
            mem[mem[64] + 160 len ceil32(_6105)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6105)]
            if ceil32(_6105) > _6105:
                mem[mem[64] + _6105 + 160] = 0
            mem[mem[64] + 96] = _11999
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6105, data=mem[mem[64] + 160 len ceil32(_6105)]),
                   _11999
        require 0 / totalAllocPoint
        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1024:
                    mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                    mem[ceil32(return_data.size) + 128] = 0
                    mem[ceil32(return_data.size) + 160] = 128
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           0,
                           128,
                           0,
                           ext_call.return_data[0],
                           mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                require arg1 < poolInfo.length
                mem[0] = 12
                if not poolInfo[arg1].field_1024:
                    mem[ceil32(return_data.size) + 100] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                    mem[(2 * ceil32(return_data.size)) + 128] = 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 128
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           0,
                           128,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.rewardToken() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.rewardToken() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 96] = 4
                mem[64] = (4 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
                mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
                mem[(4 * ceil32(return_data.size)) + 136] = 0
                staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    if ext_call.return_data[0] < 64:
                        if ext_call.return_data[0] != 32:
                            require ext_code.size(poolInfo[arg1].field_1024)
                            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                        require 0 < ext_call.return_data[0]
                        require 0 < ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                    require ext_call.return_data[0] >= 32
                    _5872 = 0, mem[132 len 28]
                    require 0, mem[132 len 28] <= test266151307()
                    require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                    _6102 = mem[0, mem[132 len 28] + 128]
                    require mem[0, mem[132 len 28] + 128] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                    mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                    require _5872 + _6102 + 160 <= ext_call.return_data[0] + 128
                    mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6102)] = mem[_5872 + 160 len ceil32(_6102)]
                    if ceil32(_6102) <= _6102:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11730 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11906 = mem[_11730]
                        require mem[_11730] == mem[_11730]
                        mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                        mem[mem[64] + 32] = address(ext_call.return_data[0])
                        mem[mem[64] + 64] = 128
                        _12258 = mem[(4 * ceil32(return_data.size)) + 132]
                        mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                        mem[mem[64] + 160 len ceil32(_12258)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12258)]
                        if ceil32(_12258) > _12258:
                            mem[mem[64] + _12258 + 160] = 0
                        mem[mem[64] + 96] = _11906
                        return -userInfo[arg1][address(arg2)].field_256, 
                               address(ext_call.return_data[0]),
                               128,
                               _11906,
                               mem[mem[64] + 128 len ceil32(_12258) + 32]
                    mem[(4 * ceil32(return_data.size)) + _6102 + 164] = 0
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11994 = mem[_11818]
                    require mem[_11818] == mem[_11818]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12346 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12346)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12346)]
                    if ceil32(_12346) > _12346:
                        mem[mem[64] + _12346 + 160] = 0
                    mem[mem[64] + 96] = _11994
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11994,
                           mem[mem[64] + 128 len ceil32(_12346) + 32]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
                mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
                mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if return_data.size < 64:
                    if 32 != return_data.size:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < return_data.size
                    require 0 < return_data.size
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                           ext_call.return_data[0]
                require return_data.size >= 32
                _5874 = mem[(4 * ceil32(return_data.size)) + 164]
                require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
                _6103 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6103
                require _5874 + _6103 + 64 <= return_data.size + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6103)] = mem[(4 * ceil32(return_data.size)) + _5874 + 196 len ceil32(_6103)]
                if ceil32(_6103) <= _6103:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11907 = mem[_11731]
                    require mem[_11731] == mem[_11731]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = _6103
                    mem[mem[64] + 160 len ceil32(_6103)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6103)]
                    if ceil32(_6103) > _6103:
                        mem[mem[64] + _6103 + 160] = 0
                    mem[mem[64] + 96] = _11907
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           Array(len=_6103, data=mem[mem[64] + 160 len ceil32(_6103)]),
                           _11907
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6103 + 165] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11995 = mem[_11819]
                require mem[_11819] == mem[_11819]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6103
                mem[mem[64] + 160 len ceil32(_6103)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6103)]
                if ceil32(_6103) > _6103:
                    mem[mem[64] + _6103 + 160] = 0
                mem[mem[64] + 96] = _11995
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6103, data=mem[mem[64] + 160 len ceil32(_6103)]),
                       _11995
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                               address(ext_call.return_data[0]),
                               128,
                               ext_call.return_data[0],
                               3,
                               '???',
                               0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           0,
                           None
                require ext_call.return_data[0] >= 32
                _5866 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6100 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5866 + _6100 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6100)] = mem[_5866 + 160 len ceil32(_6100)]
                if ceil32(_6100) <= _6100:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11726 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11902 = mem[_11726]
                    require mem[_11726] == mem[_11726]
                    mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12254 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12254)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12254)]
                    if ceil32(_12254) > _12254:
                        mem[mem[64] + _12254 + 160] = 0
                    mem[mem[64] + 96] = _11902
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11902,
                           mem[mem[64] + 128 len ceil32(_12254) + 32]
                mem[(4 * ceil32(return_data.size)) + _6100 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11814 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11990 = mem[_11814]
                require mem[_11814] == mem[_11814]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12342 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12342)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12342)]
                if ceil32(_12342) > _12342:
                    mem[mem[64] + _12342 + 160] = 0
                mem[mem[64] + 96] = _11990
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11990,
                       mem[mem[64] + 128 len ceil32(_12342) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5868 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6101 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6101
            require _5868 + _6101 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6101)] = mem[(4 * ceil32(return_data.size)) + _5868 + 196 len ceil32(_6101)]
            if ceil32(_6101) <= _6101:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11727 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11903 = mem[_11727]
                require mem[_11727] == mem[_11727]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6101
                mem[mem[64] + 160 len ceil32(_6101)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6101)]
                if ceil32(_6101) > _6101:
                    mem[mem[64] + _6101 + 160] = 0
                mem[mem[64] + 96] = _11903
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6101, data=mem[mem[64] + 160 len ceil32(_6101)]),
                       _11903
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6101 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11815 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11991 = mem[_11815]
            require mem[_11815] == mem[_11815]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6101
            mem[mem[64] + 160 len ceil32(_6101)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6101)]
            if ceil32(_6101) > _6101:
                mem[mem[64] + _6101 + 160] = 0
            mem[mem[64] + 96] = _11991
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6101, data=mem[mem[64] + 160 len ceil32(_6101)]),
                   _11991
        require (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
        if 10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                require ext_call.return_data[0] >= 32
                _5860 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6098 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5860 + _6098 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6098)] = mem[_5860 + 160 len ceil32(_6098)]
                if ceil32(_6098) <= _6098:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11898 = mem[_11722]
                    require mem[_11722] == mem[_11722]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12250 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12250)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12250)]
                    if ceil32(_12250) > _12250:
                        mem[mem[64] + _12250 + 160] = 0
                    mem[mem[64] + 96] = _11898
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11898,
                           mem[mem[64] + 128 len ceil32(_12250) + 32]
                mem[(4 * ceil32(return_data.size)) + _6098 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11810 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11986 = mem[_11810]
                require mem[_11810] == mem[_11810]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12338 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12338)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12338)]
                if ceil32(_12338) > _12338:
                    mem[mem[64] + _12338 + 160] = 0
                mem[mem[64] + 96] = _11986
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11986,
                       mem[mem[64] + 128 len ceil32(_12338) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5862 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6099 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6099
            require _5862 + _6099 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6099)] = mem[(4 * ceil32(return_data.size)) + _5862 + 196 len ceil32(_6099)]
            if ceil32(_6099) <= _6099:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11899 = mem[_11723]
                require mem[_11723] == mem[_11723]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6099
                mem[mem[64] + 160 len ceil32(_6099)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6099)]
                if ceil32(_6099) > _6099:
                    mem[mem[64] + _6099 + 160] = 0
                mem[mem[64] + 96] = _11899
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6099, data=mem[mem[64] + 160 len ceil32(_6099)]),
                       _11899
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6099 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11811 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11987 = mem[_11811]
            require mem[_11811] == mem[_11811]
            mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6099
            mem[mem[64] + 160 len ceil32(_6099)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6099)]
            if ceil32(_6099) > _6099:
                mem[mem[64] + _6099 + 160] = 0
            mem[mem[64] + 96] = _11987
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6099, data=mem[mem[64] + 160 len ceil32(_6099)]),
                   _11987
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        require arg1 < poolInfo.length
        mem[0] = 12
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 4
        mem[64] = (4 * ceil32(return_data.size)) + 132
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
        mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
        mem[(4 * ceil32(return_data.size)) + 136] = 0
        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if ext_call.return_data[0] < 64:
                if ext_call.return_data[0] != 32:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < ext_call.return_data[0]
                require 0 < ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       0,
                       None
            require ext_call.return_data[0] >= 32
            _5854 = 0, mem[132 len 28]
            require 0, mem[132 len 28] <= test266151307()
            require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
            _6096 = mem[0, mem[132 len 28] + 128]
            require mem[0, mem[132 len 28] + 128] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
            mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
            require _5854 + _6096 + 160 <= ext_call.return_data[0] + 128
            mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6096)] = mem[_5854 + 160 len ceil32(_6096)]
            if ceil32(_6096) <= _6096:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11718 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11894 = mem[_11718]
                require mem[_11718] == mem[_11718]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12246 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12246)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12246)]
                if ceil32(_12246) > _12246:
                    mem[mem[64] + _12246 + 160] = 0
                mem[mem[64] + 96] = _11894
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11894,
                       mem[mem[64] + 128 len ceil32(_12246) + 32]
            mem[(4 * ceil32(return_data.size)) + _6096 + 164] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11806 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11982 = mem[_11806]
            require mem[_11806] == mem[_11806]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            _12334 = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 160 len ceil32(_12334)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12334)]
            if ceil32(_12334) > _12334:
                mem[mem[64] + _12334 + 160] = 0
            mem[mem[64] + 96] = _11982
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   _11982,
                   mem[mem[64] + 128 len ceil32(_12334) + 32]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
        mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   3,
                   '???',
                   0
        if return_data.size < 64:
            if 32 != return_data.size:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            require 0 < return_data.size
            require 0 < return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
            if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                   ext_call.return_data[0]
        require return_data.size >= 32
        _5856 = mem[(4 * ceil32(return_data.size)) + 164]
        require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
        _6097 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6097
        require _5856 + _6097 + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6097)] = mem[(4 * ceil32(return_data.size)) + _5856 + 196 len ceil32(_6097)]
        if ceil32(_6097) <= _6097:
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11719 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11895 = mem[_11719]
            require mem[_11719] == mem[_11719]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6097
            mem[mem[64] + 160 len ceil32(_6097)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6097)]
            if ceil32(_6097) > _6097:
                mem[mem[64] + _6097 + 160] = 0
            mem[mem[64] + 96] = _11895
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6097, data=mem[mem[64] + 160 len ceil32(_6097)]),
                   _11895
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6097 + 165] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11807 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11983 = mem[_11807]
        require mem[_11807] == mem[_11807]
        mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _6097
        mem[mem[64] + 160 len ceil32(_6097)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6097)]
        if ceil32(_6097) > _6097:
            mem[mem[64] + _6097 + 160] = 0
        mem[mem[64] + 96] = _11983
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_6097, data=mem[mem[64] + 160 len ceil32(_6097)]),
               _11983
    require block.timestamp - poolInfo[arg1].field_512
    if (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) / block.timestamp - poolInfo[arg1].field_512 != joePerSec:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec):
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
                if not poolInfo[arg1].field_1024:
                    mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                    mem[ceil32(return_data.size) + 128] = 0
                    mem[ceil32(return_data.size) + 160] = 128
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           0,
                           128,
                           0,
                           ext_call.return_data[0],
                           mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                require arg1 < poolInfo.length
                mem[0] = 12
                if not poolInfo[arg1].field_1024:
                    mem[ceil32(return_data.size) + 100] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                    mem[(2 * ceil32(return_data.size)) + 128] = 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 128
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           0,
                           128,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.rewardToken() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.rewardToken() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 96] = 4
                mem[64] = (4 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
                mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
                mem[(4 * ceil32(return_data.size)) + 136] = 0
                staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    if ext_call.return_data[0] < 64:
                        if ext_call.return_data[0] != 32:
                            require ext_code.size(poolInfo[arg1].field_1024)
                            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                        require 0 < ext_call.return_data[0]
                        require 0 < ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                    require ext_call.return_data[0] >= 32
                    _5848 = 0, mem[132 len 28]
                    require 0, mem[132 len 28] <= test266151307()
                    require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                    _6094 = mem[0, mem[132 len 28] + 128]
                    require mem[0, mem[132 len 28] + 128] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                    mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                    require _5848 + _6094 + 160 <= ext_call.return_data[0] + 128
                    mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6094)] = mem[_5848 + 160 len ceil32(_6094)]
                    if ceil32(_6094) <= _6094:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11714 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11890 = mem[_11714]
                        require mem[_11714] == mem[_11714]
                        mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                        mem[mem[64] + 32] = address(ext_call.return_data[0])
                        mem[mem[64] + 64] = 128
                        _12242 = mem[(4 * ceil32(return_data.size)) + 132]
                        mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                        mem[mem[64] + 160 len ceil32(_12242)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12242)]
                        if ceil32(_12242) > _12242:
                            mem[mem[64] + _12242 + 160] = 0
                        mem[mem[64] + 96] = _11890
                        return -userInfo[arg1][address(arg2)].field_256, 
                               address(ext_call.return_data[0]),
                               128,
                               _11890,
                               mem[mem[64] + 128 len ceil32(_12242) + 32]
                    mem[(4 * ceil32(return_data.size)) + _6094 + 164] = 0
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11802 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11978 = mem[_11802]
                    require mem[_11802] == mem[_11802]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12330 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12330)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12330)]
                    if ceil32(_12330) > _12330:
                        mem[mem[64] + _12330 + 160] = 0
                    mem[mem[64] + 96] = _11978
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11978,
                           mem[mem[64] + 128 len ceil32(_12330) + 32]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
                mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
                mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if return_data.size < 64:
                    if 32 != return_data.size:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < return_data.size
                    require 0 < return_data.size
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                           ext_call.return_data[0]
                require return_data.size >= 32
                _5850 = mem[(4 * ceil32(return_data.size)) + 164]
                require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
                _6095 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6095
                require _5850 + _6095 + 64 <= return_data.size + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6095)] = mem[(4 * ceil32(return_data.size)) + _5850 + 196 len ceil32(_6095)]
                if ceil32(_6095) <= _6095:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11891 = mem[_11715]
                    require mem[_11715] == mem[_11715]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = _6095
                    mem[mem[64] + 160 len ceil32(_6095)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6095)]
                    if ceil32(_6095) > _6095:
                        mem[mem[64] + _6095 + 160] = 0
                    mem[mem[64] + 96] = _11891
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           Array(len=_6095, data=mem[mem[64] + 160 len ceil32(_6095)]),
                           _11891
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6095 + 165] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11979 = mem[_11803]
                require mem[_11803] == mem[_11803]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6095
                mem[mem[64] + 160 len ceil32(_6095)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6095)]
                if ceil32(_6095) > _6095:
                    mem[mem[64] + _6095 + 160] = 0
                mem[mem[64] + 96] = _11979
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6095, data=mem[mem[64] + 160 len ceil32(_6095)]),
                       _11979
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                               address(ext_call.return_data[0]),
                               128,
                               ext_call.return_data[0],
                               3,
                               '???',
                               0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           0,
                           None
                require ext_call.return_data[0] >= 32
                _5842 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6092 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5842 + _6092 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6092)] = mem[_5842 + 160 len ceil32(_6092)]
                if ceil32(_6092) <= _6092:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11710 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11886 = mem[_11710]
                    require mem[_11710] == mem[_11710]
                    mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12238 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12238)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12238)]
                    if ceil32(_12238) > _12238:
                        mem[mem[64] + _12238 + 160] = 0
                    mem[mem[64] + 96] = _11886
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11886,
                           mem[mem[64] + 128 len ceil32(_12238) + 32]
                mem[(4 * ceil32(return_data.size)) + _6092 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11798 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11974 = mem[_11798]
                require mem[_11798] == mem[_11798]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12326 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12326)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12326)]
                if ceil32(_12326) > _12326:
                    mem[mem[64] + _12326 + 160] = 0
                mem[mem[64] + 96] = _11974
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11974,
                       mem[mem[64] + 128 len ceil32(_12326) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5844 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6093 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6093
            require _5844 + _6093 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6093)] = mem[(4 * ceil32(return_data.size)) + _5844 + 196 len ceil32(_6093)]
            if ceil32(_6093) <= _6093:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11711 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11887 = mem[_11711]
                require mem[_11711] == mem[_11711]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6093
                mem[mem[64] + 160 len ceil32(_6093)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6093)]
                if ceil32(_6093) > _6093:
                    mem[mem[64] + _6093 + 160] = 0
                mem[mem[64] + 96] = _11887
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6093, data=mem[mem[64] + 160 len ceil32(_6093)]),
                       _11887
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6093 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11799 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11975 = mem[_11799]
            require mem[_11799] == mem[_11799]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6093
            mem[mem[64] + 160 len ceil32(_6093)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6093)]
            if ceil32(_6093) > _6093:
                mem[mem[64] + _6093 + 160] = 0
            mem[mem[64] + 96] = _11975
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6093, data=mem[mem[64] + 160 len ceil32(_6093)]),
                   _11975
        require 0 / totalAllocPoint
        if (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 0 / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1024:
                    mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                    mem[ceil32(return_data.size) + 128] = 0
                    mem[ceil32(return_data.size) + 160] = 128
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           0,
                           128,
                           0,
                           ext_call.return_data[0],
                           mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
                require arg1 < poolInfo.length
                mem[0] = 12
                if not poolInfo[arg1].field_1024:
                    mem[ceil32(return_data.size) + 100] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                    mem[(2 * ceil32(return_data.size)) + 128] = 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 128
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           0,
                           128,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.rewardToken() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.rewardToken() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 96] = 4
                mem[64] = (4 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
                mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
                mem[(4 * ceil32(return_data.size)) + 136] = 0
                staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    if ext_call.return_data[0] < 64:
                        if ext_call.return_data[0] != 32:
                            require ext_code.size(poolInfo[arg1].field_1024)
                            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                        require 0 < ext_call.return_data[0]
                        require 0 < ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                    require ext_call.return_data[0] >= 32
                    _5836 = 0, mem[132 len 28]
                    require 0, mem[132 len 28] <= test266151307()
                    require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                    _6090 = mem[0, mem[132 len 28] + 128]
                    require mem[0, mem[132 len 28] + 128] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                    mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                    require _5836 + _6090 + 160 <= ext_call.return_data[0] + 128
                    mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6090)] = mem[_5836 + 160 len ceil32(_6090)]
                    if ceil32(_6090) <= _6090:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11706 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11882 = mem[_11706]
                        require mem[_11706] == mem[_11706]
                        mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                        mem[mem[64] + 32] = address(ext_call.return_data[0])
                        mem[mem[64] + 64] = 128
                        _12234 = mem[(4 * ceil32(return_data.size)) + 132]
                        mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                        mem[mem[64] + 160 len ceil32(_12234)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12234)]
                        if ceil32(_12234) > _12234:
                            mem[mem[64] + _12234 + 160] = 0
                        mem[mem[64] + 96] = _11882
                        return -userInfo[arg1][address(arg2)].field_256, 
                               address(ext_call.return_data[0]),
                               128,
                               _11882,
                               mem[mem[64] + 128 len ceil32(_12234) + 32]
                    mem[(4 * ceil32(return_data.size)) + _6090 + 164] = 0
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11794 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11970 = mem[_11794]
                    require mem[_11794] == mem[_11794]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12322 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12322)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12322)]
                    if ceil32(_12322) > _12322:
                        mem[mem[64] + _12322 + 160] = 0
                    mem[mem[64] + 96] = _11970
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11970,
                           mem[mem[64] + 128 len ceil32(_12322) + 32]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
                mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
                mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if return_data.size < 64:
                    if 32 != return_data.size:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < return_data.size
                    require 0 < return_data.size
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                    if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                           ext_call.return_data[0]
                require return_data.size >= 32
                _5838 = mem[(4 * ceil32(return_data.size)) + 164]
                require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
                _6091 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6091
                require _5838 + _6091 + 64 <= return_data.size + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6091)] = mem[(4 * ceil32(return_data.size)) + _5838 + 196 len ceil32(_6091)]
                if ceil32(_6091) <= _6091:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11707 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11883 = mem[_11707]
                    require mem[_11707] == mem[_11707]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = _6091
                    mem[mem[64] + 160 len ceil32(_6091)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6091)]
                    if ceil32(_6091) > _6091:
                        mem[mem[64] + _6091 + 160] = 0
                    mem[mem[64] + 96] = _11883
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           Array(len=_6091, data=mem[mem[64] + 160 len ceil32(_6091)]),
                           _11883
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6091 + 165] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11971 = mem[_11795]
                require mem[_11795] == mem[_11795]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6091
                mem[mem[64] + 160 len ceil32(_6091)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6091)]
                if ceil32(_6091) > _6091:
                    mem[mem[64] + _6091 + 160] = 0
                mem[mem[64] + 96] = _11971
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6091, data=mem[mem[64] + 160 len ceil32(_6091)]),
                       _11971
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                               address(ext_call.return_data[0]),
                               128,
                               ext_call.return_data[0],
                               3,
                               '???',
                               0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           0,
                           None
                require ext_call.return_data[0] >= 32
                _5830 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6088 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5830 + _6088 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6088)] = mem[_5830 + 160 len ceil32(_6088)]
                if ceil32(_6088) <= _6088:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11878 = mem[_11702]
                    require mem[_11702] == mem[_11702]
                    mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12230 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12230)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12230)]
                    if ceil32(_12230) > _12230:
                        mem[mem[64] + _12230 + 160] = 0
                    mem[mem[64] + 96] = _11878
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11878,
                           mem[mem[64] + 128 len ceil32(_12230) + 32]
                mem[(4 * ceil32(return_data.size)) + _6088 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11790 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11966 = mem[_11790]
                require mem[_11790] == mem[_11790]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12318 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12318)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12318)]
                if ceil32(_12318) > _12318:
                    mem[mem[64] + _12318 + 160] = 0
                mem[mem[64] + 96] = _11966
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11966,
                       mem[mem[64] + 128 len ceil32(_12318) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5832 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6089 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6089
            require _5832 + _6089 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6089)] = mem[(4 * ceil32(return_data.size)) + _5832 + 196 len ceil32(_6089)]
            if ceil32(_6089) <= _6089:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11879 = mem[_11703]
                require mem[_11703] == mem[_11703]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6089
                mem[mem[64] + 160 len ceil32(_6089)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6089)]
                if ceil32(_6089) > _6089:
                    mem[mem[64] + _6089 + 160] = 0
                mem[mem[64] + 96] = _11879
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6089, data=mem[mem[64] + 160 len ceil32(_6089)]),
                       _11879
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6089 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11967 = mem[_11791]
            require mem[_11791] == mem[_11791]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6089
            mem[mem[64] + 160 len ceil32(_6089)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6089)]
            if ceil32(_6089) > _6089:
                mem[mem[64] + _6089 + 160] = 0
            mem[mem[64] + 96] = _11967
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6089, data=mem[mem[64] + 160 len ceil32(_6089)]),
                   _11967
        require (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000
        if 10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                require ext_call.return_data[0] >= 32
                _5824 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6086 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5824 + _6086 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6086)] = mem[_5824 + 160 len ceil32(_6086)]
                if ceil32(_6086) <= _6086:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11698 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11874 = mem[_11698]
                    require mem[_11698] == mem[_11698]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12226 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12226)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12226)]
                    if ceil32(_12226) > _12226:
                        mem[mem[64] + _12226 + 160] = 0
                    mem[mem[64] + 96] = _11874
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11874,
                           mem[mem[64] + 128 len ceil32(_12226) + 32]
                mem[(4 * ceil32(return_data.size)) + _6086 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11786 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11962 = mem[_11786]
                require mem[_11786] == mem[_11786]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12314 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12314)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12314)]
                if ceil32(_12314) > _12314:
                    mem[mem[64] + _12314 + 160] = 0
                mem[mem[64] + 96] = _11962
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11962,
                       mem[mem[64] + 128 len ceil32(_12314) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5826 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6087 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6087
            require _5826 + _6087 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6087)] = mem[(4 * ceil32(return_data.size)) + _5826 + 196 len ceil32(_6087)]
            if ceil32(_6087) <= _6087:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11875 = mem[_11699]
                require mem[_11699] == mem[_11699]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6087
                mem[mem[64] + 160 len ceil32(_6087)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6087)]
                if ceil32(_6087) > _6087:
                    mem[mem[64] + _6087 + 160] = 0
                mem[mem[64] + 96] = _11875
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6087, data=mem[mem[64] + 160 len ceil32(_6087)]),
                       _11875
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6087 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11787 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11963 = mem[_11787]
            require mem[_11787] == mem[_11787]
            mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6087
            mem[mem[64] + 160 len ceil32(_6087)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6087)]
            if ceil32(_6087) > _6087:
                mem[mem[64] + _6087 + 160] = 0
            mem[mem[64] + 96] = _11963
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6087, data=mem[mem[64] + 160 len ceil32(_6087)]),
                   _11963
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        require arg1 < poolInfo.length
        mem[0] = 12
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 4
        mem[64] = (4 * ceil32(return_data.size)) + 132
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
        mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
        mem[(4 * ceil32(return_data.size)) + 136] = 0
        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if ext_call.return_data[0] < 64:
                if ext_call.return_data[0] != 32:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < ext_call.return_data[0]
                require 0 < ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       0,
                       None
            require ext_call.return_data[0] >= 32
            _5818 = 0, mem[132 len 28]
            require 0, mem[132 len 28] <= test266151307()
            require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
            _6084 = mem[0, mem[132 len 28] + 128]
            require mem[0, mem[132 len 28] + 128] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
            mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
            require _5818 + _6084 + 160 <= ext_call.return_data[0] + 128
            mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6084)] = mem[_5818 + 160 len ceil32(_6084)]
            if ceil32(_6084) <= _6084:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11694 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11870 = mem[_11694]
                require mem[_11694] == mem[_11694]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12222 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12222)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12222)]
                if ceil32(_12222) > _12222:
                    mem[mem[64] + _12222 + 160] = 0
                mem[mem[64] + 96] = _11870
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11870,
                       mem[mem[64] + 128 len ceil32(_12222) + 32]
            mem[(4 * ceil32(return_data.size)) + _6084 + 164] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11782 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11958 = mem[_11782]
            require mem[_11782] == mem[_11782]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            _12310 = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 160 len ceil32(_12310)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12310)]
            if ceil32(_12310) > _12310:
                mem[mem[64] + _12310 + 160] = 0
            mem[mem[64] + 96] = _11958
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   _11958,
                   mem[mem[64] + 128 len ceil32(_12310) + 32]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
        mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   3,
                   '???',
                   0
        if return_data.size < 64:
            if 32 != return_data.size:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            require 0 < return_data.size
            require 0 < return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
            if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                   ext_call.return_data[0]
        require return_data.size >= 32
        _5820 = mem[(4 * ceil32(return_data.size)) + 164]
        require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
        _6085 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6085
        require _5820 + _6085 + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6085)] = mem[(4 * ceil32(return_data.size)) + _5820 + 196 len ceil32(_6085)]
        if ceil32(_6085) <= _6085:
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11695 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11871 = mem[_11695]
            require mem[_11695] == mem[_11695]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6085
            mem[mem[64] + 160 len ceil32(_6085)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6085)]
            if ceil32(_6085) > _6085:
                mem[mem[64] + _6085 + 160] = 0
            mem[mem[64] + 96] = _11871
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6085, data=mem[mem[64] + 160 len ceil32(_6085)]),
                   _11871
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6085 + 165] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11783 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11959 = mem[_11783]
        require mem[_11783] == mem[_11783]
        mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _6085
        mem[mem[64] + 160 len ceil32(_6085)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6085)]
        if ceil32(_6085) > _6085:
            mem[mem[64] + _6085 + 160] = 0
        mem[mem[64] + 96] = _11959
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * 0 / totalAllocPoint) - (devPercent * 0 / totalAllocPoint) - (treasuryPercent * 0 / totalAllocPoint) - (investorPercent * 0 / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_6085, data=mem[mem[64] + 160 len ceil32(_6085)]),
               _11959
    require (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec)
    if (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / (block.timestamp * joePerSec) - (poolInfo[arg1].field_512 * joePerSec) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                require ext_call.return_data[0] >= 32
                _5812 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6082 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5812 + _6082 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6082)] = mem[_5812 + 160 len ceil32(_6082)]
                if ceil32(_6082) <= _6082:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11866 = mem[_11690]
                    require mem[_11690] == mem[_11690]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12218 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12218)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12218)]
                    if ceil32(_12218) > _12218:
                        mem[mem[64] + _12218 + 160] = 0
                    mem[mem[64] + 96] = _11866
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11866,
                           mem[mem[64] + 128 len ceil32(_12218) + 32]
                mem[(4 * ceil32(return_data.size)) + _6082 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11778 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11954 = mem[_11778]
                require mem[_11778] == mem[_11778]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12306 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12306)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12306)]
                if ceil32(_12306) > _12306:
                    mem[mem[64] + _12306 + 160] = 0
                mem[mem[64] + 96] = _11954
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11954,
                       mem[mem[64] + 128 len ceil32(_12306) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5814 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6083 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6083
            require _5814 + _6083 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6083)] = mem[(4 * ceil32(return_data.size)) + _5814 + 196 len ceil32(_6083)]
            if ceil32(_6083) <= _6083:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11867 = mem[_11691]
                require mem[_11691] == mem[_11691]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6083
                mem[mem[64] + 160 len ceil32(_6083)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6083)]
                if ceil32(_6083) > _6083:
                    mem[mem[64] + _6083 + 160] = 0
                mem[mem[64] + 96] = _11867
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6083, data=mem[mem[64] + 160 len ceil32(_6083)]),
                       _11867
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6083 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11779 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11955 = mem[_11779]
            require mem[_11779] == mem[_11779]
            mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6083
            mem[mem[64] + 160 len ceil32(_6083)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6083)]
            if ceil32(_6083) > _6083:
                mem[mem[64] + _6083 + 160] = 0
            mem[mem[64] + 96] = _11955
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6083, data=mem[mem[64] + 160 len ceil32(_6083)]),
                   _11955
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        require arg1 < poolInfo.length
        mem[0] = 12
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 4
        mem[64] = (4 * ceil32(return_data.size)) + 132
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
        mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
        mem[(4 * ceil32(return_data.size)) + 136] = 0
        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if ext_call.return_data[0] < 64:
                if ext_call.return_data[0] != 32:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < ext_call.return_data[0]
                require 0 < ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       0,
                       None
            require ext_call.return_data[0] >= 32
            _5806 = 0, mem[132 len 28]
            require 0, mem[132 len 28] <= test266151307()
            require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
            _6080 = mem[0, mem[132 len 28] + 128]
            require mem[0, mem[132 len 28] + 128] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
            mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
            require _5806 + _6080 + 160 <= ext_call.return_data[0] + 128
            mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6080)] = mem[_5806 + 160 len ceil32(_6080)]
            if ceil32(_6080) <= _6080:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11862 = mem[_11686]
                require mem[_11686] == mem[_11686]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12214 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12214)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12214)]
                if ceil32(_12214) > _12214:
                    mem[mem[64] + _12214 + 160] = 0
                mem[mem[64] + 96] = _11862
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11862,
                       mem[mem[64] + 128 len ceil32(_12214) + 32]
            mem[(4 * ceil32(return_data.size)) + _6080 + 164] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11774 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11950 = mem[_11774]
            require mem[_11774] == mem[_11774]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            _12302 = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 160 len ceil32(_12302)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12302)]
            if ceil32(_12302) > _12302:
                mem[mem[64] + _12302 + 160] = 0
            mem[mem[64] + 96] = _11950
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   _11950,
                   mem[mem[64] + 128 len ceil32(_12302) + 32]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
        mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   3,
                   '???',
                   0
        if return_data.size < 64:
            if 32 != return_data.size:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            require 0 < return_data.size
            require 0 < return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
            if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                   ext_call.return_data[0]
        require return_data.size >= 32
        _5808 = mem[(4 * ceil32(return_data.size)) + 164]
        require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
        _6081 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6081
        require _5808 + _6081 + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6081)] = mem[(4 * ceil32(return_data.size)) + _5808 + 196 len ceil32(_6081)]
        if ceil32(_6081) <= _6081:
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11687 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11863 = mem[_11687]
            require mem[_11687] == mem[_11687]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6081
            mem[mem[64] + 160 len ceil32(_6081)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6081)]
            if ceil32(_6081) > _6081:
                mem[mem[64] + _6081 + 160] = 0
            mem[mem[64] + 96] = _11863
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6081, data=mem[mem[64] + 160 len ceil32(_6081)]),
                   _11863
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6081 + 165] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11775 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11951 = mem[_11775]
        require mem[_11775] == mem[_11775]
        mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _6081
        mem[mem[64] + 160 len ceil32(_6081)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6081)]
        if ceil32(_6081) > _6081:
            mem[mem[64] + _6081 + 160] = 0
        mem[mem[64] + 96] = _11951
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_6081, data=mem[mem[64] + 160 len ceil32(_6081)]),
               _11951
    require (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint
    if (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint != -devPercent + -treasuryPercent + -investorPercent + 1000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = 128
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       0,
                       ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
            require arg1 < poolInfo.length
            mem[0] = 12
            if not poolInfo[arg1].field_1024:
                mem[ceil32(return_data.size) + 100] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 128
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       0,
                       128,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.rewardToken() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 96] = 4
            mem[64] = (4 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
            mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
            mem[(4 * ceil32(return_data.size)) + 136] = 0
            staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                if ext_call.return_data[0] < 64:
                    if ext_call.return_data[0] != 32:
                        require ext_code.size(poolInfo[arg1].field_1024)
                        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                    require 0 < ext_call.return_data[0]
                    require 0 < ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
                require ext_call.return_data[0] >= 32
                _5800 = 0, mem[132 len 28]
                require 0, mem[132 len 28] <= test266151307()
                require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
                _6078 = mem[0, mem[132 len 28] + 128]
                require mem[0, mem[132 len 28] + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
                mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
                require _5800 + _6078 + 160 <= ext_call.return_data[0] + 128
                mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6078)] = mem[_5800 + 160 len ceil32(_6078)]
                if ceil32(_6078) <= _6078:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11858 = mem[_11682]
                    require mem[_11682] == mem[_11682]
                    mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                    mem[mem[64] + 32] = address(ext_call.return_data[0])
                    mem[mem[64] + 64] = 128
                    _12210 = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                    mem[mem[64] + 160 len ceil32(_12210)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12210)]
                    if ceil32(_12210) > _12210:
                        mem[mem[64] + _12210 + 160] = 0
                    mem[mem[64] + 96] = _11858
                    return -userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           _11858,
                           mem[mem[64] + 128 len ceil32(_12210) + 32]
                mem[(4 * ceil32(return_data.size)) + _6078 + 164] = 0
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11770 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11946 = mem[_11770]
                require mem[_11770] == mem[_11770]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12298 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12298)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12298)]
                if ceil32(_12298) > _12298:
                    mem[mem[64] + _12298 + 160] = 0
                mem[mem[64] + 96] = _11946
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11946,
                       mem[mem[64] + 128 len ceil32(_12298) + 32]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
            mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
            if return_data.size < 64:
                if 32 != return_data.size:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                require 0 < return_data.size
                require 0 < return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
                if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                       ext_call.return_data[0]
            require return_data.size >= 32
            _5802 = mem[(4 * ceil32(return_data.size)) + 164]
            require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
            _6079 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6079
            require _5802 + _6079 + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6079)] = mem[(4 * ceil32(return_data.size)) + _5802 + 196 len ceil32(_6079)]
            if ceil32(_6079) <= _6079:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11683 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11859 = mem[_11683]
                require mem[_11683] == mem[_11683]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = _6079
                mem[mem[64] + 160 len ceil32(_6079)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6079)]
                if ceil32(_6079) > _6079:
                    mem[mem[64] + _6079 + 160] = 0
                mem[mem[64] + 96] = _11859
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       Array(len=_6079, data=mem[mem[64] + 160 len ceil32(_6079)]),
                       _11859
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6079 + 165] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11771 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11947 = mem[_11771]
            require mem[_11771] == mem[_11771]
            mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6079
            mem[mem[64] + 160 len ceil32(_6079)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6079)]
            if ceil32(_6079) > _6079:
                mem[mem[64] + _6079 + 160] = 0
            mem[mem[64] + 96] = _11947
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6079, data=mem[mem[64] + 160 len ceil32(_6079)]),
                   _11947
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        require arg1 < poolInfo.length
        mem[0] = 12
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 4
        mem[64] = (4 * ceil32(return_data.size)) + 132
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
        mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
        mem[(4 * ceil32(return_data.size)) + 136] = 0
        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            if ext_call.return_data[0] < 64:
                if ext_call.return_data[0] != 32:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           address(ext_call.return_data[0]),
                           128,
                           ext_call.return_data[0],
                           3,
                           '???',
                           0
                require 0 < ext_call.return_data[0]
                require 0 < ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       0,
                       None
            require ext_call.return_data[0] >= 32
            _5794 = 0, mem[132 len 28]
            require 0, mem[132 len 28] <= test266151307()
            require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
            _6076 = mem[0, mem[132 len 28] + 128]
            require mem[0, mem[132 len 28] + 128] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
            mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
            require _5794 + _6076 + 160 <= ext_call.return_data[0] + 128
            mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6076)] = mem[_5794 + 160 len ceil32(_6076)]
            if ceil32(_6076) <= _6076:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11678 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11854 = mem[_11678]
                require mem[_11678] == mem[_11678]
                mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12206 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12206)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12206)]
                if ceil32(_12206) > _12206:
                    mem[mem[64] + _12206 + 160] = 0
                mem[mem[64] + 96] = _11854
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11854,
                       mem[mem[64] + 128 len ceil32(_12206) + 32]
            mem[(4 * ceil32(return_data.size)) + _6076 + 164] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11766 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11942 = mem[_11766]
            require mem[_11766] == mem[_11766]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            _12294 = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 160 len ceil32(_12294)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12294)]
            if ceil32(_12294) > _12294:
                mem[mem[64] + _12294 + 160] = 0
            mem[mem[64] + 96] = _11942
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   _11942,
                   mem[mem[64] + 128 len ceil32(_12294) + 32]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
        mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   3,
                   '???',
                   0
        if return_data.size < 64:
            if 32 != return_data.size:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            require 0 < return_data.size
            require 0 < return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
            if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                   ext_call.return_data[0]
        require return_data.size >= 32
        _5796 = mem[(4 * ceil32(return_data.size)) + 164]
        require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
        _6077 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6077
        require _5796 + _6077 + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6077)] = mem[(4 * ceil32(return_data.size)) + _5796 + 196 len ceil32(_6077)]
        if ceil32(_6077) <= _6077:
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11679 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11855 = mem[_11679]
            require mem[_11679] == mem[_11679]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6077
            mem[mem[64] + 160 len ceil32(_6077)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6077)]
            if ceil32(_6077) > _6077:
                mem[mem[64] + _6077 + 160] = 0
            mem[mem[64] + 96] = _11855
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6077, data=mem[mem[64] + 160 len ceil32(_6077)]),
                   _11855
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6077 + 165] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11767 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11943 = mem[_11767]
        require mem[_11767] == mem[_11767]
        mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _6077
        mem[mem[64] + 160 len ceil32(_6077)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6077)]
        if ceil32(_6077) > _6077:
            mem[mem[64] + _6077 + 160] = 0
        mem[mem[64] + 96] = _11943
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_6077, data=mem[mem[64] + 160 len ceil32(_6077)]),
               _11943
    require (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000
    if 10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 96] = -userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
            return -userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        require arg1 < poolInfo.length
        mem[0] = 12
        if not poolInfo[arg1].field_1024:
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = -userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
            return -userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.rewardToken() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 4
        mem[64] = (4 * ceil32(return_data.size)) + 132
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
        mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
        mem[(4 * ceil32(return_data.size)) + 136] = 0
        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
            if ext_call.return_data[0] < 64:
                if ext_call.return_data[0] != 32:
                    require ext_code.size(poolInfo[arg1].field_1024)
                    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
                require 0 < ext_call.return_data[0]
                require 0 < ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 0, None
            require ext_call.return_data[0] >= 32
            _5788 = 0, mem[132 len 28]
            require 0, mem[132 len 28] <= test266151307()
            require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
            _6074 = mem[0, mem[132 len 28] + 128]
            require mem[0, mem[132 len 28] + 128] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
            mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
            require _5788 + _6074 + 160 <= ext_call.return_data[0] + 128
            mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6074)] = mem[_5788 + 160 len ceil32(_6074)]
            if ceil32(_6074) <= _6074:
                mem[mem[64] + 4] = arg2
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11850 = mem[_11674]
                require mem[_11674] == mem[_11674]
                mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
                mem[mem[64] + 32] = address(ext_call.return_data[0])
                mem[mem[64] + 64] = 128
                _12202 = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
                mem[mem[64] + 160 len ceil32(_12202)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12202)]
                if ceil32(_12202) > _12202:
                    mem[mem[64] + _12202 + 160] = 0
                mem[mem[64] + 96] = _11850
                return -userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       _11850,
                       mem[mem[64] + 128 len ceil32(_12202) + 32]
            mem[(4 * ceil32(return_data.size)) + _6074 + 164] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11762 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11938 = mem[_11762]
            require mem[_11762] == mem[_11762]
            mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            _12290 = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 160 len ceil32(_12290)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12290)]
            if ceil32(_12290) > _12290:
                mem[mem[64] + _12290 + 160] = 0
            mem[mem[64] + 96] = _11938
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   _11938,
                   mem[mem[64] + 128 len ceil32(_12290) + 32]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
        mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
        if return_data.size < 64:
            if 32 != return_data.size:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return -userInfo[arg1][address(arg2)].field_256, address(ext_call.return_data[0]), 128, ext_call.return_data[0], 3, '???', 0
            require 0 < return_data.size
            require 0 < return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = -userInfo[arg1][address(arg2)].field_256
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
            if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
                   ext_call.return_data[0]
        require return_data.size >= 32
        _5790 = mem[(4 * ceil32(return_data.size)) + 164]
        require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
        _6075 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6075
        require _5790 + _6075 + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6075)] = mem[(4 * ceil32(return_data.size)) + _5790 + 196 len ceil32(_6075)]
        if ceil32(_6075) <= _6075:
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11675 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11851 = mem[_11675]
            require mem[_11675] == mem[_11675]
            mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _6075
            mem[mem[64] + 160 len ceil32(_6075)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6075)]
            if ceil32(_6075) > _6075:
                mem[mem[64] + _6075 + 160] = 0
            mem[mem[64] + 96] = _11851
            return -userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_6075, data=mem[mem[64] + 160 len ceil32(_6075)]),
                   _11851
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6075 + 165] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11763 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11939 = mem[_11763]
        require mem[_11763] == mem[_11763]
        mem[mem[64]] = -userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _6075
        mem[mem[64] + 160 len ceil32(_6075)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6075)]
        if ceil32(_6075) > _6075:
            mem[mem[64] + _6075 + 160] = 0
        mem[mem[64] + 96] = _11939
        return -userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_6075, data=mem[mem[64] + 160 len ceil32(_6075)]),
               _11939
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if not poolInfo[arg1].field_1024:
        mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[ceil32(return_data.size) + 128] = 0
        mem[ceil32(return_data.size) + 160] = 128
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] = 0
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               0,
               128,
               0,
               ext_call.return_data[0],
               mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
    require arg1 < poolInfo.length
    mem[0] = 12
    if not poolInfo[arg1].field_1024:
        mem[ceil32(return_data.size) + 100] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[(2 * ceil32(return_data.size)) + 128] = 0
        mem[(2 * ceil32(return_data.size)) + 160] = 128
        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 256] = 0
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               0,
               128,
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.rewardToken() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.rewardToken() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 96] = 4
    mem[64] = (4 * ceil32(return_data.size)) + 132
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x95d89b41(?????)
    mem[(4 * ceil32(return_data.size)) + 132] = 0, mem[(4 * ceil32(return_data.size)) + 132 len 28]
    mem[(4 * ceil32(return_data.size)) + 136] = 0
    staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 132 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   3,
                   '???',
                   0
        if ext_call.return_data[0] < 64:
            if ext_call.return_data[0] != 32:
                require ext_code.size(poolInfo[arg1].field_1024)
                staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       address(ext_call.return_data[0]),
                       128,
                       ext_call.return_data[0],
                       3,
                       '???',
                       0
            require 0 < ext_call.return_data[0]
            require 0 < ext_call.return_data[0]
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   0,
                   None
        require ext_call.return_data[0] >= 32
        _5782 = 0, mem[132 len 28]
        require 0, mem[132 len 28] <= test266151307()
        require 0, mem[132 len 28] + 159 < ext_call.return_data[0] + 128
        _6072 = mem[0, mem[132 len 28] + 128]
        require mem[0, mem[132 len 28] + 128] <= test266151307()
        require (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164 <= test266151307() and ceil32(mem[0, mem[132 len 28] + 128]) + 164 >= 132
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[0, mem[132 len 28] + 128]) + 164
        mem[(4 * ceil32(return_data.size)) + 132] = mem[0, mem[132 len 28] + 128]
        require _5782 + _6072 + 160 <= ext_call.return_data[0] + 128
        mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_6072)] = mem[_5782 + 160 len ceil32(_6072)]
        if ceil32(_6072) <= _6072:
            mem[mem[64] + 4] = arg2
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11670 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11846 = mem[_11670]
            require mem[_11670] == mem[_11670]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            _12198 = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
            mem[mem[64] + 160 len ceil32(_12198)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12198)]
            if ceil32(_12198) > _12198:
                mem[mem[64] + _12198 + 160] = 0
            mem[mem[64] + 96] = _11846
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   _11846,
                   mem[mem[64] + 128 len ceil32(_12198) + 32]
        mem[(4 * ceil32(return_data.size)) + _6072 + 164] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11758 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11934 = mem[_11758]
        require mem[_11758] == mem[_11758]
        mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        _12286 = mem[(4 * ceil32(return_data.size)) + 132]
        mem[mem[64] + 128] = mem[(4 * ceil32(return_data.size)) + 132]
        mem[mem[64] + 160 len ceil32(_12286)] = mem[(4 * ceil32(return_data.size)) + 164 len ceil32(_12286)]
        if ceil32(_12286) > _12286:
            mem[mem[64] + _12286 + 160] = 0
        mem[mem[64] + 96] = _11934
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               128,
               _11934,
               mem[mem[64] + 128 len ceil32(_12286) + 32]
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133
    mem[(4 * ceil32(return_data.size)) + 132] = return_data.size
    mem[(4 * ceil32(return_data.size)) + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               128,
               ext_call.return_data[0],
               3,
               '???',
               0
    if return_data.size < 64:
        if 32 != return_data.size:
            require ext_code.size(poolInfo[arg1].field_1024)
            staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   128,
                   ext_call.return_data[0],
                   3,
                   '???',
                   0
        require 0 < return_data.size
        require 0 < return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args arg2
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 128
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]
        if ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]) > mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133]:
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] + 325] = 0
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133], data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133])]),
               ext_call.return_data[0]
    require return_data.size >= 32
    _5784 = mem[(4 * ceil32(return_data.size)) + 164]
    require mem[(4 * ceil32(return_data.size)) + 164] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 195 < (4 * ceil32(return_data.size)) + return_data.size + 164
    _6073 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164] <= test266151307()
    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165 >= 133
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 164] + 164]) + 165
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = _6073
    require _5784 + _6073 + 64 <= return_data.size + 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6073)] = mem[(4 * ceil32(return_data.size)) + _5784 + 196 len ceil32(_6073)]
    if ceil32(_6073) <= _6073:
        mem[mem[64] + 4] = arg2
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11671 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11847 = mem[_11671]
        require mem[_11671] == mem[_11671]
        mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _6073
        mem[mem[64] + 160 len ceil32(_6073)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6073)]
        if ceil32(_6073) > _6073:
            mem[mem[64] + _6073 + 160] = 0
        mem[mem[64] + 96] = _11847
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_6073, data=mem[mem[64] + 160 len ceil32(_6073)]),
               _11847
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _6073 + 165] = 0
    mem[mem[64] + 4] = arg2
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.pendingTokens(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11759 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11935 = mem[_11759]
    require mem[_11759] == mem[_11759]
    mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
    mem[mem[64] + 32] = address(ext_call.return_data[0])
    mem[mem[64] + 64] = 128
    mem[mem[64] + 128] = _6073
    mem[mem[64] + 160 len ceil32(_6073)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len ceil32(_6073)]
    if ceil32(_6073) > _6073:
        mem[mem[64] + _6073 + 160] = 0
    mem[mem[64] + 96] = _11935
    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (1000 * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (devPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (treasuryPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) - (investorPercent * (block.timestamp * joePerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * joePerSec * poolInfo[arg1].field_256) / totalAllocPoint) / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
           address(ext_call.return_data[0]),
           Array(len=_6073, data=mem[mem[64] + 160 len ceil32(_6073)]),
           _11935
}



}
