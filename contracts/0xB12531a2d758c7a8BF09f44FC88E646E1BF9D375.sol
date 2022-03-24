contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 5


address owner;
address sub_28f2642fAddress;
uint256 devFundDivRate;
address devfundAddress;
uint256 treasuryDivRate;
address treasuryAddress;
uint256 bonusEndBlock;
uint256 sub_d9f0abf5;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function sub_28f2642f(?) payable {
    return sub_28f2642fAddress
}

function treasuryDivRate() payable {
    return treasuryDivRate
}

function startBlock() payable {
    return startBlock
}

function devFundDivRate() payable {
    return devFundDivRate
}

function treasury() payable {
    return treasuryAddress
}

function devfund() payable {
    return devfundAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_d9f0abf5(?) payable {
    return sub_d9f0abf5
}

function _fallback() payable {
    revert
}

function sub_bff792d9(?) payable {
    require calldata.size - 4 >= 32
    if devfundAddress != msg.sender:
        revert with 0, 'dev: wut?'
    devfundAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function sub_3f933ae3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, '!snowballPerBlock-0'
    sub_d9f0abf5 = arg1
}

function setDevFundDivRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, '!devFundDivRate-0'
    devFundDivRate = arg1
}

function setTreasuryDivRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, '!treasuryDivRate-0'
    treasuryDivRate = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - arg1:
            return 0
        require arg2 - arg1
        if (5 * arg2) - (5 * arg1) / arg2 - arg1 != 5:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((5 * arg2) - (5 * arg1))
    if arg1 >= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if bonusEndBlock > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - arg1:
        if arg2 - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 - bonusEndBlock)
    require bonusEndBlock - arg1
    if (5 * bonusEndBlock) - (5 * arg1) / bonusEndBlock - arg1 != 5:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (4 * bonusEndBlock) + arg2 < 5 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    return ((4 * bonusEndBlock) - (5 * arg1) + arg2)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if devFundDivRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if treasuryDivRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (5 * block.number) - (5 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (5 * block.number) - (5 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if treasuryDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require treasuryDivRate
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (5 * block.number) - (5 * poolInfo[arg1].field_512)
                        if (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) / (5 * block.number) - (5 * poolInfo[arg1].field_512) != sub_d9f0abf5:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5)
                            if (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if treasuryDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require treasuryDivRate
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5) / block.number - poolInfo[arg1].field_512 != sub_d9f0abf5:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5)
                            if (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) / block.number - bonusEndBlock != sub_d9f0abf5:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if treasuryDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require treasuryDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5)
                                if (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if treasuryDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require treasuryDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / treasuryDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (5 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 5:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (4 * bonusEndBlock) + block.number < 5 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number
                            if (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) / (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number != sub_d9f0abf5:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if treasuryDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require treasuryDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5)
                                if (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devfundAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if treasuryDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require treasuryDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / treasuryDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_f90a25be(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
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
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (5 * block.number) - (5 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (5 * block.number) - (5 * poolInfo[arg1].field_512):
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (5 * block.number) - (5 * poolInfo[arg1].field_512)
        if (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) / (5 * block.number) - (5 * poolInfo[arg1].field_512) != sub_d9f0abf5:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5):
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5)
        if (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5) / block.number - poolInfo[arg1].field_512 != sub_d9f0abf5:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5):
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5)
        if (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - poolInfo[arg1].field_512:
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - bonusEndBlock
        if (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) / block.number - bonusEndBlock != sub_d9f0abf5:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5):
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5)
        if (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require bonusEndBlock - poolInfo[arg1].field_512
    if (5 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 5:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (4 * bonusEndBlock) + block.number < 5 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number
    if (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) / (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number != sub_d9f0abf5:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5)
    if (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if block.number <= bonusEndBlock:
            _743 = mem[64]
            mem[64] = mem[64] + 64
            mem[_743] = 30
            mem[_743 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _746 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_746 + idx + 68] = mem[_743 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_746 + 68] = mem[_746 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _746 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _794 = mem[64]
                mem[64] = mem[64] + 64
                mem[_794] = 26
                mem[_794 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _803 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_803 + idx + 68] = mem[_794 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_803 + 68] = mem[_803 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _803 + -mem[64] + 100
                require totalAllocPoint
                _840 = mem[64]
                mem[64] = mem[64] + 64
                mem[_840] = 26
                mem[_840 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _860 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_860 + idx + 68] = mem[_840 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_860 + 68] = mem[_860 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _860 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _936 = mem[64]
                mem[64] = mem[64] + 64
                mem[_936] = 26
                mem[_936 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _968 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_968 + idx + 68] = mem[_936 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_968 + 68] = mem[_968 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _968 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1150 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1150] = 26
                    mem[_1150 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1186 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1186 + idx + 68] = mem[_1150 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1186 + 68] = mem[_1186 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1186 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1185 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1185] = 26
                mem[_1185 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1231 + idx + 68] = mem[_1185 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1231 + 68] = mem[_1231 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1231 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (5 * block.number) - (5 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (5 * block.number) - (5 * poolInfo[idx].field_512):
                _802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_802] = 26
                mem[_802 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_819 + idx + 68] = mem[_802 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_819 + 68] = mem[_819 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _819 + -mem[64] + 100
                require totalAllocPoint
                _858 = mem[64]
                mem[64] = mem[64] + 64
                mem[_858] = 26
                mem[_858 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _880 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_880 + idx + 68] = mem[_858 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_880 + 68] = mem[_880 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _880 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_967] = 26
                mem[_967 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1004 + idx + 68] = mem[_967 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1004 + 68] = mem[_1004 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1004 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1184 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1184] = 26
                    mem[_1184 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1228 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1228 + idx + 68] = mem[_1184 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1228 + 68] = mem[_1228 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1228 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1227 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1227] = 26
                mem[_1227 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1270 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1270 + idx + 68] = mem[_1227 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1270 + 68] = mem[_1270 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1270 + -mem[64] + 100
            require (5 * block.number) - (5 * poolInfo[idx].field_512)
            if (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) / (5 * block.number) - (5 * poolInfo[idx].field_512) != sub_d9f0abf5:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5):
                _818 = mem[64]
                mem[64] = mem[64] + 64
                mem[_818] = 26
                mem[_818 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _836 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_836 + idx + 68] = mem[_818 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_836 + 68] = mem[_836 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _836 + -mem[64] + 100
                require totalAllocPoint
                _878 = mem[64]
                mem[64] = mem[64] + 64
                mem[_878] = 26
                mem[_878 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _906 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_906 + idx + 68] = mem[_878 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_906 + 68] = mem[_906 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _906 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1003] = 26
                mem[_1003 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1039 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1039 + idx + 68] = mem[_1003 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1039 + 68] = mem[_1039 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1039 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1226] = 26
                    mem[_1226 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1267 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1267 + idx + 68] = mem[_1226 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1267 + 68] = mem[_1267 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1267 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1266 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1266] = 26
                mem[_1266 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1300 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1300 + idx + 68] = mem[_1266 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1300 + 68] = mem[_1300 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1300 + -mem[64] + 100
            require (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5)
            if (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _835 = mem[64]
            mem[64] = mem[64] + 64
            mem[_835] = 26
            mem[_835 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _854 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_854 + idx + 68] = mem[_835 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_854 + 68] = mem[_854 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _854 + -mem[64] + 100
            require totalAllocPoint
            _904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_904] = 26
            mem[_904 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _931 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_931 + idx + 68] = mem[_904 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_931 + 68] = mem[_931 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _931 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devfundAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1038 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1038] = 26
            mem[_1038 + 32] = 'SafeMath: division by zero'
            if treasuryDivRate <= 0:
                _1072 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1072 + idx + 68] = mem[_1038 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1072 + 68] = mem[_1072 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1072 + -mem[64] + 100
            require treasuryDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args treasuryAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                _1265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1265] = 26
                mem[_1265 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1297 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1297 + idx + 68] = mem[_1265 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1297 + 68] = mem[_1297 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1297 + -mem[64] + 100
            require (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1296 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1296] = 26
            mem[_1296 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1323 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1323 + idx + 68] = mem[_1296 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1323 + 68] = mem[_1323 + 74 len 26]
            revert with memory
              from mem[64]
               len _1323 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _745 = mem[64]
            mem[64] = mem[64] + 64
            mem[_745] = 30
            mem[_745 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _752 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_752 + idx + 68] = mem[_745 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_752 + 68] = mem[_752 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _752 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _783 = mem[64]
                mem[64] = mem[64] + 64
                mem[_783] = 26
                mem[_783 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _791 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_791 + idx + 68] = mem[_783 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_791 + 68] = mem[_791 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _791 + -mem[64] + 100
                require totalAllocPoint
                _810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_810] = 26
                mem[_810 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _826 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_826 + idx + 68] = mem[_810 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_826 + 68] = mem[_826 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _826 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _891 = mem[64]
                mem[64] = mem[64] + 64
                mem[_891] = 26
                mem[_891 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_922 + idx + 68] = mem[_891 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_922 + 68] = mem[_922 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _922 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1111 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1111] = 26
                    mem[_1111 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1137 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1137 + idx + 68] = mem[_1111 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1137 + 68] = mem[_1137 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1137 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1136] = 26
                mem[_1136 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1166 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1166 + idx + 68] = mem[_1136 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1166 + 68] = mem[_1166 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1166 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5) / block.number - poolInfo[idx].field_512 != sub_d9f0abf5:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5):
                _790 = mem[64]
                mem[64] = mem[64] + 64
                mem[_790] = 26
                mem[_790 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _796 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_796 + idx + 68] = mem[_790 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_796 + 68] = mem[_796 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _796 + -mem[64] + 100
                require totalAllocPoint
                _824 = mem[64]
                mem[64] = mem[64] + 64
                mem[_824] = 26
                mem[_824 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _844 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_844 + idx + 68] = mem[_824 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_844 + 68] = mem[_844 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _844 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_921] = 26
                mem[_921 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _949 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_949 + idx + 68] = mem[_921 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_949 + 68] = mem[_949 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _949 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1135] = 26
                    mem[_1135 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1163 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1163 + idx + 68] = mem[_1135 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1163 + 68] = mem[_1163 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1163 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1162] = 26
                mem[_1162 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1200 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1200 + idx + 68] = mem[_1162 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1200 + 68] = mem[_1200 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1200 + -mem[64] + 100
            require (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5)
            if (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _795 = mem[64]
            mem[64] = mem[64] + 64
            mem[_795] = 26
            mem[_795 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _806 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_806 + idx + 68] = mem[_795 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_806 + 68] = mem[_806 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _806 + -mem[64] + 100
            require totalAllocPoint
            _842 = mem[64]
            mem[64] = mem[64] + 64
            mem[_842] = 26
            mem[_842 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _864 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_864 + idx + 68] = mem[_842 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_864 + 68] = mem[_864 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _864 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _948 = mem[64]
            mem[64] = mem[64] + 64
            mem[_948] = 26
            mem[_948 + 32] = 'SafeMath: division by zero'
            if treasuryDivRate <= 0:
                _983 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_983 + idx + 68] = mem[_948 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_983 + 68] = mem[_983 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _983 + -mem[64] + 100
            require treasuryDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                _1161 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1161] = 26
                mem[_1161 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1197 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1197 + idx + 68] = mem[_1161 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1197 + 68] = mem[_1197 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1197 + -mem[64] + 100
            require (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1196 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1196] = 26
            mem[_1196 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1238 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1238 + idx + 68] = mem[_1196 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1238 + 68] = mem[_1238 + 74 len 26]
            revert with memory
              from mem[64]
               len _1238 + -mem[64] + 100
        _744 = mem[64]
        mem[64] = mem[64] + 64
        mem[_744] = 30
        mem[_744 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            _749 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_749 + idx + 68] = mem[_744 + idx + 32]
                idx = idx + 32
                continue 
            mem[_749 + 68] = mem[_749 + 70 len 30]
            revert with memory
              from mem[64]
               len _749 + -mem[64] + 100
        _760 = mem[64]
        mem[64] = mem[64] + 64
        mem[_760] = 30
        mem[_760 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _768 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_768 + idx + 68] = mem[_760 + idx + 32]
                idx = idx + 32
                continue 
            mem[_768 + 68] = mem[_768 + 70 len 30]
            revert with memory
              from mem[64]
               len _768 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _863 = mem[64]
                mem[64] = mem[64] + 64
                mem[_863] = 26
                mem[_863 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _886 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_886 + idx + 68] = mem[_863 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_886 + 68] = mem[_886 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _886 + -mem[64] + 100
                require totalAllocPoint
                _946 = mem[64]
                mem[64] = mem[64] + 64
                mem[_946] = 26
                mem[_946 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _980 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_980 + idx + 68] = mem[_946 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_980 + 68] = mem[_980 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _980 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1084 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1084] = 26
                mem[_1084 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1108 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1108 + idx + 68] = mem[_1084 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1108 + 68] = mem[_1108 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1108 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1307 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1307] = 26
                    mem[_1307 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1333 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1333 + idx + 68] = mem[_1307 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1333 + 68] = mem[_1333 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1333 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1332 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1332] = 26
                mem[_1332 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1361 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1361 + idx + 68] = mem[_1332 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1361 + 68] = mem[_1361 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1361 + -mem[64] + 100
            require block.number - bonusEndBlock
            if (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) / block.number - bonusEndBlock != sub_d9f0abf5:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5):
                _885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_885] = 26
                mem[_885 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _916 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_916 + idx + 68] = mem[_885 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_916 + 68] = mem[_916 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _916 + -mem[64] + 100
                require totalAllocPoint
                _978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_978] = 26
                mem[_978 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _1016 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1016 + idx + 68] = mem[_978 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1016 + 68] = mem[_1016 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1016 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1107] = 26
                mem[_1107 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1131 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1131 + idx + 68] = mem[_1107 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1131 + 68] = mem[_1131 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1131 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1331] = 26
                    mem[_1331 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1358 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1358 + idx + 68] = mem[_1331 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1358 + 68] = mem[_1358 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1358 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1357 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1357] = 26
                mem[_1357 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1389 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1389 + idx + 68] = mem[_1357 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1389 + 68] = mem[_1389 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1389 + -mem[64] + 100
            require (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5)
            if (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _915 = mem[64]
            mem[64] = mem[64] + 64
            mem[_915] = 26
            mem[_915 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _942 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_942 + idx + 68] = mem[_915 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_942 + 68] = mem[_942 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _942 + -mem[64] + 100
            require totalAllocPoint
            _1014 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1014] = 26
            mem[_1014 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _1050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1050 + idx + 68] = mem[_1014 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1050 + 68] = mem[_1050 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1050 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1130 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1130] = 26
            mem[_1130 + 32] = 'SafeMath: division by zero'
            if treasuryDivRate <= 0:
                _1156 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1156 + idx + 68] = mem[_1130 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1156 + 68] = mem[_1156 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1156 + -mem[64] + 100
            require treasuryDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                _1356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1356] = 26
                mem[_1356 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1386 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1386 + idx + 68] = mem[_1356 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1386 + 68] = mem[_1386 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1386 + -mem[64] + 100
            require (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1385 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1385] = 26
            mem[_1385 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1415 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1415 + idx + 68] = mem[_1385 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1415 + 68] = mem[_1415 + 74 len 26]
            revert with memory
              from mem[64]
               len _1415 + -mem[64] + 100
        require bonusEndBlock - poolInfo[idx].field_512
        if (5 * bonusEndBlock) - (5 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 5:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (4 * bonusEndBlock) + block.number < 5 * bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number:
            _884 = mem[64]
            mem[64] = mem[64] + 64
            mem[_884] = 26
            mem[_884 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _912 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_912 + idx + 68] = mem[_884 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_912 + 68] = mem[_912 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _912 + -mem[64] + 100
            require totalAllocPoint
            _975 = mem[64]
            mem[64] = mem[64] + 64
            mem[_975] = 26
            mem[_975 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _1011 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1011 + idx + 68] = mem[_975 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1011 + 68] = mem[_1011 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1011 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1105] = 26
            mem[_1105 + 32] = 'SafeMath: division by zero'
            if treasuryDivRate <= 0:
                _1127 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1127 + idx + 68] = mem[_1105 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1127 + 68] = mem[_1127 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1127 + -mem[64] + 100
            require treasuryDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1330 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1330] = 26
                mem[_1330 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1353 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1353 + idx + 68] = mem[_1330 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1353 + 68] = mem[_1353 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1353 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1352] = 26
            mem[_1352 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1381 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1381 + idx + 68] = mem[_1352 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1381 + 68] = mem[_1381 + 74 len 26]
            revert with memory
              from mem[64]
               len _1381 + -mem[64] + 100
        require (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number
        if (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) / (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number != sub_d9f0abf5:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5):
            _911 = mem[64]
            mem[64] = mem[64] + 64
            mem[_911] = 26
            mem[_911 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _938 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_938 + idx + 68] = mem[_911 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_938 + 68] = mem[_938 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _938 + -mem[64] + 100
            require totalAllocPoint
            _1009 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1009] = 26
            mem[_1009 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _1046 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1046 + idx + 68] = mem[_1009 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1046 + 68] = mem[_1046 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1046 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1126] = 26
            mem[_1126 + 32] = 'SafeMath: division by zero'
            if treasuryDivRate <= 0:
                _1152 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1152 + idx + 68] = mem[_1126 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1152 + 68] = mem[_1152 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1152 + -mem[64] + 100
            require treasuryDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1351] = 26
                mem[_1351 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1378 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1378 + idx + 68] = mem[_1351 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1378 + 68] = mem[_1378 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1378 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1377 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1377] = 26
            mem[_1377 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1409 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1409 + idx + 68] = mem[_1377 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1409 + 68] = mem[_1409 + 74 len 26]
            revert with memory
              from mem[64]
               len _1409 + -mem[64] + 100
        require (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5)
        if (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _937 = mem[64]
        mem[64] = mem[64] + 64
        mem[_937] = 26
        mem[_937 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _971 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_971 + idx + 68] = mem[_937 + idx + 32]
                idx = idx + 32
                continue 
            mem[_971 + 68] = mem[_971 + 74 len 26]
            revert with memory
              from mem[64]
               len _971 + -mem[64] + 100
        require totalAllocPoint
        _1044 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1044] = 26
        mem[_1044 + 32] = 'SafeMath: division by zero'
        if devFundDivRate <= 0:
            _1077 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1077 + idx + 68] = mem[_1044 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1077 + 68] = mem[_1077 + 74 len 26]
            revert with memory
              from mem[64]
               len _1077 + -mem[64] + 100
        require devFundDivRate
        require ext_code.size(sub_28f2642fAddress)
        call sub_28f2642fAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devfundAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1151 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1151] = 26
        mem[_1151 + 32] = 'SafeMath: division by zero'
        if treasuryDivRate <= 0:
            _1189 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1189 + idx + 68] = mem[_1151 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1189 + 68] = mem[_1189 + 74 len 26]
            revert with memory
              from mem[64]
               len _1189 + -mem[64] + 100
        require treasuryDivRate
        require ext_code.size(sub_28f2642fAddress)
        call sub_28f2642fAddress.0x40c10f19 with:
             gas gas_remaining wei
            args treasuryAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_28f2642fAddress)
        call sub_28f2642fAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
            _1376 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1376] = 26
            mem[_1376 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1406 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1406 + idx + 68] = mem[_1376 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1406 + 68] = mem[_1406 + 74 len 26]
            revert with memory
              from mem[64]
               len _1406 + -mem[64] + 100
        require (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1405 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1405] = 26
        mem[_1405 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1436 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_1436 + idx + 68] = mem[_1405 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1436 + 68] = mem[_1436 + 74 len 26]
        revert with memory
          from mem[64]
           len _1436 + -mem[64] + 100
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_28f2642fAddress)
                staticcall sub_28f2642fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_28f2642fAddress)
                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call sub_28f2642fAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                else:
                    call sub_28f2642fAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_28f2642fAddress)
                staticcall sub_28f2642fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_28f2642fAddress)
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call sub_28f2642fAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    call sub_28f2642fAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[544 len 4] = 0
            mem[516 len 0] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(msg.sender)].field_0 += arg2
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 522 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_28f2642fAddress)
                    staticcall sub_28f2642fAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_28f2642fAddress)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_28f2642fAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_28f2642fAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_28f2642fAddress)
                    staticcall sub_28f2642fAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_28f2642fAddress)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_28f2642fAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_28f2642fAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[544 len 4] = 0
                mem[516 len 0] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if devFundDivRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if treasuryDivRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (5 * block.number) - (5 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (5 * block.number) - (5 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if treasuryDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require treasuryDivRate
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (5 * block.number) - (5 * poolInfo[arg1].field_512)
                        if (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) / (5 * block.number) - (5 * poolInfo[arg1].field_512) != sub_d9f0abf5:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5)
                            if (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[736 len 4] = 0
                    mem[708 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[644]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 723 len 22]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 714 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_28f2642fAddress)
                        staticcall sub_28f2642fAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_28f2642fAddress)
                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_28f2642fAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_28f2642fAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_28f2642fAddress)
                        staticcall sub_28f2642fAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_28f2642fAddress)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_28f2642fAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_28f2642fAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[864 len 4] = 0
                    mem[836 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[836 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[772]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 851 len 22]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 842 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if treasuryDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require treasuryDivRate
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_28f2642fAddress)
                        call sub_28f2642fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5) / block.number - poolInfo[arg1].field_512 != sub_d9f0abf5:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5)
                            if (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / (block.number * sub_d9f0abf5) - (poolInfo[arg1].field_512 * sub_d9f0abf5) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[736 len 4] = 0
                        mem[708 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 714 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_28f2642fAddress)
                            staticcall sub_28f2642fAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_28f2642fAddress)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_28f2642fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_28f2642fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_28f2642fAddress)
                            staticcall sub_28f2642fAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_28f2642fAddress)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_28f2642fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_28f2642fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[864 len 4] = 0
                        mem[836 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[836 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 842 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) / block.number - bonusEndBlock != sub_d9f0abf5:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if treasuryDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require treasuryDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5)
                                if (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if treasuryDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require treasuryDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / treasuryDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (5 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 5:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (4 * bonusEndBlock) + block.number < 5 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if treasuryDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require treasuryDivRate
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_28f2642fAddress)
                            call sub_28f2642fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number
                            if (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) / (4 * bonusEndBlock) - (5 * poolInfo[arg1].field_512) + block.number != sub_d9f0abf5:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if treasuryDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require treasuryDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5)
                                if (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devfundAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if treasuryDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require treasuryDivRate
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args treasuryAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / treasuryDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_28f2642fAddress)
                                call sub_28f2642fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[arg1].field_256) - (5 * poolInfo[arg1].field_512 * sub_d9f0abf5 * poolInfo[arg1].field_256) + (block.number * sub_d9f0abf5 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[800 len 4] = 0
                        mem[772 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 778 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_28f2642fAddress)
                            staticcall sub_28f2642fAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_28f2642fAddress)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_28f2642fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_28f2642fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_28f2642fAddress)
                            staticcall sub_28f2642fAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_28f2642fAddress)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_28f2642fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_28f2642fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[804 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[928 len 4] = 0
                        mem[900 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[900 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[836]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 915 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 906 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _784 = mem[64]
                mem[64] = mem[64] + 64
                mem[_784] = 30
                mem[_784 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _788 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_788 + idx + 68] = mem[_784 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_788 + 68] = mem[_788 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _788 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_836] = 26
                    mem[_836 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _845 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_845 + idx + 68] = mem[_836 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_845 + 68] = mem[_845 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _845 + -mem[64] + 100
                    require totalAllocPoint
                    _882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_882] = 26
                    mem[_882 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _902 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_902 + idx + 68] = mem[_882 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_902 + 68] = mem[_902 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _902 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_978] = 26
                    mem[_978 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1010 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1010 + idx + 68] = mem[_978 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1010 + 68] = mem[_1010 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1010 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1192 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1192] = 26
                        mem[_1192 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1228 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1228 + idx + 68] = mem[_1192 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1228 + 68] = mem[_1228 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1228 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1227 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1227] = 26
                    mem[_1227 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1273 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1273 + idx + 68] = mem[_1227 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1273 + 68] = mem[_1273 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1273 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (5 * block.number) - (5 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (5 * block.number) - (5 * poolInfo[idx].field_512):
                    _844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_844] = 26
                    mem[_844 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _861 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_861 + idx + 68] = mem[_844 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_861 + 68] = mem[_861 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _861 + -mem[64] + 100
                    require totalAllocPoint
                    _900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_900] = 26
                    mem[_900 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _922 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_922 + idx + 68] = mem[_900 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_922 + 68] = mem[_922 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _922 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1009 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1009] = 26
                    mem[_1009 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1046 + idx + 68] = mem[_1009 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1046 + 68] = mem[_1046 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1046 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1226] = 26
                        mem[_1226 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1270 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1270 + idx + 68] = mem[_1226 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1270 + 68] = mem[_1270 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1270 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1269] = 26
                    mem[_1269 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1312 + idx + 68] = mem[_1269 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1312 + 68] = mem[_1312 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1312 + -mem[64] + 100
                require (5 * block.number) - (5 * poolInfo[idx].field_512)
                if (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) / (5 * block.number) - (5 * poolInfo[idx].field_512) != sub_d9f0abf5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5):
                    _860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_860] = 26
                    mem[_860 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _878 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_878 + idx + 68] = mem[_860 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_878 + 68] = mem[_878 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _878 + -mem[64] + 100
                    require totalAllocPoint
                    _920 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_920] = 26
                    mem[_920 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _948 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_948 + idx + 68] = mem[_920 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_948 + 68] = mem[_948 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _948 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1045] = 26
                    mem[_1045 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1081 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1081 + idx + 68] = mem[_1045 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1081 + 68] = mem[_1081 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1081 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1268 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1268] = 26
                        mem[_1268 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1309 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1309 + idx + 68] = mem[_1268 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1309 + 68] = mem[_1309 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1309 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1308 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1308] = 26
                    mem[_1308 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1342 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1342 + idx + 68] = mem[_1308 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1342 + 68] = mem[_1342 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1342 + -mem[64] + 100
                require (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5)
                if (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _877 = mem[64]
                mem[64] = mem[64] + 64
                mem[_877] = 26
                mem[_877 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _896 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_896 + idx + 68] = mem[_877 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_896 + 68] = mem[_896 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _896 + -mem[64] + 100
                require totalAllocPoint
                _946 = mem[64]
                mem[64] = mem[64] + 64
                mem[_946] = 26
                mem[_946 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _973 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_973 + idx + 68] = mem[_946 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_973 + 68] = mem[_973 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _973 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1080 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1080] = 26
                mem[_1080 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1114 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1114 + idx + 68] = mem[_1080 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1114 + 68] = mem[_1114 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1114 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1307 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1307] = 26
                    mem[_1307 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1339 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1339 + idx + 68] = mem[_1307 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1339 + 68] = mem[_1339 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1339 + -mem[64] + 100
                require (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1338] = 26
                mem[_1338 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1365 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1365 + idx + 68] = mem[_1338 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1365 + 68] = mem[_1365 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1365 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _786 = mem[64]
                mem[64] = mem[64] + 64
                mem[_786] = 30
                mem[_786 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _794 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_794 + idx + 68] = mem[_786 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_794 + 68] = mem[_794 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _794 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_825] = 26
                    mem[_825 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _833 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_833 + idx + 68] = mem[_825 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_833 + 68] = mem[_833 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _833 + -mem[64] + 100
                    require totalAllocPoint
                    _852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_852] = 26
                    mem[_852 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _868 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_868 + idx + 68] = mem[_852 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_868 + 68] = mem[_868 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _868 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_933] = 26
                    mem[_933 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _964 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_964 + idx + 68] = mem[_933 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_964 + 68] = mem[_964 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _964 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1153] = 26
                        mem[_1153 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1179 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1179 + idx + 68] = mem[_1153 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1179 + 68] = mem[_1179 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1179 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1178] = 26
                    mem[_1178 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1208 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1208 + idx + 68] = mem[_1178 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1208 + 68] = mem[_1208 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1208 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5) / block.number - poolInfo[idx].field_512 != sub_d9f0abf5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5):
                    _832 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_832] = 26
                    mem[_832 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _838 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_838 + idx + 68] = mem[_832 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_838 + 68] = mem[_838 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _838 + -mem[64] + 100
                    require totalAllocPoint
                    _866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_866] = 26
                    mem[_866 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _886 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_886 + idx + 68] = mem[_866 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_886 + 68] = mem[_886 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _886 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_963] = 26
                    mem[_963 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _991 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_991 + idx + 68] = mem[_963 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_991 + 68] = mem[_991 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _991 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1177 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1177] = 26
                        mem[_1177 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1205 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1205 + idx + 68] = mem[_1177 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1205 + 68] = mem[_1205 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1205 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1204 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1204] = 26
                    mem[_1204 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1242 + idx + 68] = mem[_1204 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1242 + 68] = mem[_1242 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1242 + -mem[64] + 100
                require (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5)
                if (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _837 = mem[64]
                mem[64] = mem[64] + 64
                mem[_837] = 26
                mem[_837 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _848 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_848 + idx + 68] = mem[_837 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_848 + 68] = mem[_848 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _848 + -mem[64] + 100
                require totalAllocPoint
                _884 = mem[64]
                mem[64] = mem[64] + 64
                mem[_884] = 26
                mem[_884 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _906 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_906 + idx + 68] = mem[_884 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_906 + 68] = mem[_906 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _906 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _990 = mem[64]
                mem[64] = mem[64] + 64
                mem[_990] = 26
                mem[_990 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1025 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1025 + idx + 68] = mem[_990 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1025 + 68] = mem[_1025 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1025 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1203] = 26
                    mem[_1203 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1239 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1239 + idx + 68] = mem[_1203 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1239 + 68] = mem[_1239 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1239 + -mem[64] + 100
                require (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1238] = 26
                mem[_1238 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1280 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1280 + idx + 68] = mem[_1238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1280 + 68] = mem[_1280 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1280 + -mem[64] + 100
            _785 = mem[64]
            mem[64] = mem[64] + 64
            mem[_785] = 30
            mem[_785 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _791 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_791 + idx + 68] = mem[_785 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_791 + 68] = mem[_791 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _791 + -mem[64] + 100
            _802 = mem[64]
            mem[64] = mem[64] + 64
            mem[_802] = 30
            mem[_802 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _810 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_810 + idx + 68] = mem[_802 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_810 + 68] = mem[_810 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _810 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_905] = 26
                    mem[_905 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _928 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_928 + idx + 68] = mem[_905 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_928 + 68] = mem[_928 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _928 + -mem[64] + 100
                    require totalAllocPoint
                    _988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_988] = 26
                    mem[_988 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _1022 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1022 + idx + 68] = mem[_988 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1022 + 68] = mem[_1022 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1022 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1126] = 26
                    mem[_1126 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1150 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1150 + idx + 68] = mem[_1126 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1150 + 68] = mem[_1150 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1150 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1349 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1349] = 26
                        mem[_1349 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1375 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1375 + idx + 68] = mem[_1349 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1375 + 68] = mem[_1375 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1375 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1374] = 26
                    mem[_1374 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1403 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1403 + idx + 68] = mem[_1374 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1403 + 68] = mem[_1403 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1403 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) / block.number - bonusEndBlock != sub_d9f0abf5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5):
                    _927 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_927] = 26
                    mem[_927 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_958 + idx + 68] = mem[_927 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_958 + 68] = mem[_958 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _958 + -mem[64] + 100
                    require totalAllocPoint
                    _1020 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1020] = 26
                    mem[_1020 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _1058 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1058 + idx + 68] = mem[_1020 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1058 + 68] = mem[_1058 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1058 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1149] = 26
                    mem[_1149 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1173 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1173 + idx + 68] = mem[_1149 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1173 + 68] = mem[_1173 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1173 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1373 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1373] = 26
                        mem[_1373 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1400 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1400 + idx + 68] = mem[_1373 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1400 + 68] = mem[_1400 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1400 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1399] = 26
                    mem[_1399 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1431 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1431 + idx + 68] = mem[_1399 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1431 + 68] = mem[_1431 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1431 + -mem[64] + 100
                require (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5)
                if (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _957 = mem[64]
                mem[64] = mem[64] + 64
                mem[_957] = 26
                mem[_957 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _984 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_984 + idx + 68] = mem[_957 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_984 + 68] = mem[_984 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _984 + -mem[64] + 100
                require totalAllocPoint
                _1056 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1056] = 26
                mem[_1056 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _1092 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1092 + idx + 68] = mem[_1056 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1092 + 68] = mem[_1092 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1092 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1172] = 26
                mem[_1172 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1198 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1198 + idx + 68] = mem[_1172 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1198 + 68] = mem[_1198 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1198 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1398] = 26
                    mem[_1398 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1428 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1428 + idx + 68] = mem[_1398 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1428 + 68] = mem[_1428 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1428 + -mem[64] + 100
                require (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1427 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1427] = 26
                mem[_1427 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1457 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1457 + idx + 68] = mem[_1427 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1457 + 68] = mem[_1457 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1457 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (5 * bonusEndBlock) - (5 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 5:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (4 * bonusEndBlock) + block.number < 5 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number:
                _926 = mem[64]
                mem[64] = mem[64] + 64
                mem[_926] = 26
                mem[_926 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _954 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_954 + idx + 68] = mem[_926 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_954 + 68] = mem[_954 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _954 + -mem[64] + 100
                require totalAllocPoint
                _1017 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1017] = 26
                mem[_1017 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _1053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1053 + idx + 68] = mem[_1017 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1053 + 68] = mem[_1053 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1053 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1147 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1147] = 26
                mem[_1147 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1169 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1169 + idx + 68] = mem[_1147 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1169 + 68] = mem[_1169 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1169 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1372] = 26
                    mem[_1372 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1395 + idx + 68] = mem[_1372 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1395 + 68] = mem[_1395 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1395 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1394] = 26
                mem[_1394 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1423 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1423 + idx + 68] = mem[_1394 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1423 + 68] = mem[_1423 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1423 + -mem[64] + 100
            require (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number
            if (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) / (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number != sub_d9f0abf5:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5):
                _953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_953] = 26
                mem[_953 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _980 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_980 + idx + 68] = mem[_953 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_980 + 68] = mem[_980 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _980 + -mem[64] + 100
                require totalAllocPoint
                _1051 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1051] = 26
                mem[_1051 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _1088 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1088 + idx + 68] = mem[_1051 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1088 + 68] = mem[_1088 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1088 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1168] = 26
                mem[_1168 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1194 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1194 + idx + 68] = mem[_1168 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1194 + 68] = mem[_1194 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1194 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1393] = 26
                    mem[_1393 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1420 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1420 + idx + 68] = mem[_1393 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1420 + 68] = mem[_1420 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1420 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1419 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1419] = 26
                mem[_1419 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1451 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1451 + idx + 68] = mem[_1419 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1451 + 68] = mem[_1451 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1451 + -mem[64] + 100
            require (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5)
            if (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _979 = mem[64]
            mem[64] = mem[64] + 64
            mem[_979] = 26
            mem[_979 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1013 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1013 + idx + 68] = mem[_979 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1013 + 68] = mem[_1013 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1013 + -mem[64] + 100
            require totalAllocPoint
            _1086 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1086] = 26
            mem[_1086 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _1119 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1119 + idx + 68] = mem[_1086 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1119 + 68] = mem[_1119 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1119 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devfundAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1193 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1193] = 26
            mem[_1193 + 32] = 'SafeMath: division by zero'
            if treasuryDivRate <= 0:
                _1231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1231 + idx + 68] = mem[_1193 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1231 + 68] = mem[_1231 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1231 + -mem[64] + 100
            require treasuryDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args treasuryAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                _1418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1418] = 26
                mem[_1418 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1448 + idx + 68] = mem[_1418 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1448 + 68] = mem[_1448 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1448 + -mem[64] + 100
            require (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1447 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1447] = 26
            mem[_1447 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1478 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1478 + idx + 68] = mem[_1447 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1478 + 68] = mem[_1478 + 74 len 26]
            revert with memory
              from mem[64]
               len _1478 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_793] = 30
                mem[_793 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _796 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_796 + idx + 68] = mem[_793 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_796 + 68] = mem[_796 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _796 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_844] = 26
                    mem[_844 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _853 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_853 + idx + 68] = mem[_844 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_853 + 68] = mem[_853 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _853 + -mem[64] + 100
                    require totalAllocPoint
                    _890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_890] = 26
                    mem[_890 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _910 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_910 + idx + 68] = mem[_890 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_910 + 68] = mem[_910 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _910 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _986 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_986] = 26
                    mem[_986 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1018 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1018 + idx + 68] = mem[_986 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1018 + 68] = mem[_1018 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1018 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1200 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1200] = 26
                        mem[_1200 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1236 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1236 + idx + 68] = mem[_1200 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1236 + 68] = mem[_1236 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1236 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1235] = 26
                    mem[_1235 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1281 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1281 + idx + 68] = mem[_1235 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1281 + 68] = mem[_1281 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1281 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (5 * block.number) - (5 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (5 * block.number) - (5 * poolInfo[idx].field_512):
                    _852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_852] = 26
                    mem[_852 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _869 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_869 + idx + 68] = mem[_852 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_869 + 68] = mem[_869 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _869 + -mem[64] + 100
                    require totalAllocPoint
                    _908 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_908] = 26
                    mem[_908 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _930 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_930 + idx + 68] = mem[_908 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_930 + 68] = mem[_930 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _930 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1017] = 26
                    mem[_1017 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1054 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1054 + idx + 68] = mem[_1017 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1054 + 68] = mem[_1054 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1054 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1234 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1234] = 26
                        mem[_1234 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1278 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1278 + idx + 68] = mem[_1234 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1278 + 68] = mem[_1278 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1278 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1277 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1277] = 26
                    mem[_1277 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1320 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1320 + idx + 68] = mem[_1277 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1320 + 68] = mem[_1320 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1320 + -mem[64] + 100
                require (5 * block.number) - (5 * poolInfo[idx].field_512)
                if (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) / (5 * block.number) - (5 * poolInfo[idx].field_512) != sub_d9f0abf5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5):
                    _868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_868] = 26
                    mem[_868 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _886 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_886 + idx + 68] = mem[_868 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_886 + 68] = mem[_886 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _886 + -mem[64] + 100
                    require totalAllocPoint
                    _928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_928] = 26
                    mem[_928 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _956 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_956 + idx + 68] = mem[_928 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_956 + 68] = mem[_956 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _956 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1053 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1053] = 26
                    mem[_1053 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1089 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1089 + idx + 68] = mem[_1053 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1089 + 68] = mem[_1089 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1089 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1276] = 26
                        mem[_1276 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1317 + idx + 68] = mem[_1276 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1317 + 68] = mem[_1317 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1317 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1316 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1316] = 26
                    mem[_1316 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1350 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1350 + idx + 68] = mem[_1316 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1350 + 68] = mem[_1350 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1350 + -mem[64] + 100
                require (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5)
                if (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / (5 * block.number * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_885] = 26
                mem[_885 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _904 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_904 + idx + 68] = mem[_885 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_904 + 68] = mem[_904 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _904 + -mem[64] + 100
                require totalAllocPoint
                _954 = mem[64]
                mem[64] = mem[64] + 64
                mem[_954] = 26
                mem[_954 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_981 + idx + 68] = mem[_954 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_981 + 68] = mem[_981 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _981 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1088 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1088] = 26
                mem[_1088 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1122 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1122 + idx + 68] = mem[_1088 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1122 + 68] = mem[_1122 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1122 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1315 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1315] = 26
                    mem[_1315 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1347 + idx + 68] = mem[_1315 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1347 + 68] = mem[_1347 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1347 + -mem[64] + 100
                require (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1346] = 26
                mem[_1346 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (5 * block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1373 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1373 + idx + 68] = mem[_1346 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1373 + 68] = mem[_1373 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1373 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _795 = mem[64]
                mem[64] = mem[64] + 64
                mem[_795] = 30
                mem[_795 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _802 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_802 + idx + 68] = mem[_795 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_802 + 68] = mem[_802 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _802 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_833] = 26
                    mem[_833 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _841 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_841 + idx + 68] = mem[_833 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_841 + 68] = mem[_841 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _841 + -mem[64] + 100
                    require totalAllocPoint
                    _860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_860] = 26
                    mem[_860 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _876 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_876 + idx + 68] = mem[_860 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_876 + 68] = mem[_876 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _876 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _941 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_941] = 26
                    mem[_941 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_972 + idx + 68] = mem[_941 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_972 + 68] = mem[_972 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _972 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1161 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1161] = 26
                        mem[_1161 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1187 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1187 + idx + 68] = mem[_1161 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1187 + 68] = mem[_1187 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1187 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1186 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1186] = 26
                    mem[_1186 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1216 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1216 + idx + 68] = mem[_1186 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1216 + 68] = mem[_1216 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1216 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5) / block.number - poolInfo[idx].field_512 != sub_d9f0abf5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5):
                    _840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_840] = 26
                    mem[_840 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _846 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_846 + idx + 68] = mem[_840 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_846 + 68] = mem[_846 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _846 + -mem[64] + 100
                    require totalAllocPoint
                    _874 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_874] = 26
                    mem[_874 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _894 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_894 + idx + 68] = mem[_874 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_894 + 68] = mem[_894 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _894 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_971] = 26
                    mem[_971 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _999 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_999 + idx + 68] = mem[_971 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_999 + 68] = mem[_999 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _999 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1185 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1185] = 26
                        mem[_1185 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1213 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1213 + idx + 68] = mem[_1185 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1213 + 68] = mem[_1213 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1213 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1212] = 26
                    mem[_1212 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1250 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1250 + idx + 68] = mem[_1212 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1250 + 68] = mem[_1250 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1250 + -mem[64] + 100
                require (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5)
                if (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / (block.number * sub_d9f0abf5) - (poolInfo[idx].field_512 * sub_d9f0abf5) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_845] = 26
                mem[_845 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_856 + idx + 68] = mem[_845 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_856 + 68] = mem[_856 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _856 + -mem[64] + 100
                require totalAllocPoint
                _892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_892] = 26
                mem[_892 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _914 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_914 + idx + 68] = mem[_892 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_914 + 68] = mem[_914 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _914 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _998 = mem[64]
                mem[64] = mem[64] + 64
                mem[_998] = 26
                mem[_998 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1033 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1033 + idx + 68] = mem[_998 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1033 + 68] = mem[_1033 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1033 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1211] = 26
                    mem[_1211 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1247 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1247 + idx + 68] = mem[_1211 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1247 + 68] = mem[_1247 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1247 + -mem[64] + 100
                require (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1246] = 26
                mem[_1246 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1288 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1288 + idx + 68] = mem[_1246 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1288 + 68] = mem[_1288 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1288 + -mem[64] + 100
            _794 = mem[64]
            mem[64] = mem[64] + 64
            mem[_794] = 30
            mem[_794 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _799 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_799 + idx + 68] = mem[_794 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_799 + 68] = mem[_799 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _799 + -mem[64] + 100
            _810 = mem[64]
            mem[64] = mem[64] + 64
            mem[_810] = 30
            mem[_810 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _818 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_818 + idx + 68] = mem[_810 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_818 + 68] = mem[_818 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _818 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _913 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_913] = 26
                    mem[_913 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _936 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_936 + idx + 68] = mem[_913 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_936 + 68] = mem[_936 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _936 + -mem[64] + 100
                    require totalAllocPoint
                    _996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_996] = 26
                    mem[_996 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _1030 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1030 + idx + 68] = mem[_996 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1030 + 68] = mem[_1030 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1030 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1134] = 26
                    mem[_1134 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1158 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1158 + idx + 68] = mem[_1134 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1158 + 68] = mem[_1158 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1158 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1357] = 26
                        mem[_1357 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1383 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1383 + idx + 68] = mem[_1357 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1383 + 68] = mem[_1383 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1383 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1382] = 26
                    mem[_1382 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1411 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1411 + idx + 68] = mem[_1382 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1411 + 68] = mem[_1411 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1411 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) / block.number - bonusEndBlock != sub_d9f0abf5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5):
                    _935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_935] = 26
                    mem[_935 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _966 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_966 + idx + 68] = mem[_935 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_966 + 68] = mem[_966 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _966 + -mem[64] + 100
                    require totalAllocPoint
                    _1028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1028] = 26
                    mem[_1028 + 32] = 'SafeMath: division by zero'
                    if devFundDivRate <= 0:
                        _1066 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1066 + idx + 68] = mem[_1028 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1066 + 68] = mem[_1066 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1066 + -mem[64] + 100
                    require devFundDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1157 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1157] = 26
                    mem[_1157 + 32] = 'SafeMath: division by zero'
                    if treasuryDivRate <= 0:
                        _1181 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1181 + idx + 68] = mem[_1157 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1181 + 68] = mem[_1181 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1181 + -mem[64] + 100
                    require treasuryDivRate
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_28f2642fAddress)
                    call sub_28f2642fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1381 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1381] = 26
                        mem[_1381 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1408 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1408 + idx + 68] = mem[_1381 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1408 + 68] = mem[_1408 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1408 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1407 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1407] = 26
                    mem[_1407 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1439 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1439 + idx + 68] = mem[_1407 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1439 + 68] = mem[_1439 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1439 + -mem[64] + 100
                require (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5)
                if (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / (block.number * sub_d9f0abf5) - (bonusEndBlock * sub_d9f0abf5) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _965 = mem[64]
                mem[64] = mem[64] + 64
                mem[_965] = 26
                mem[_965 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _992 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_992 + idx + 68] = mem[_965 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_992 + 68] = mem[_992 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _992 + -mem[64] + 100
                require totalAllocPoint
                _1064 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1064] = 26
                mem[_1064 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _1100 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1100 + idx + 68] = mem[_1064 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1100 + 68] = mem[_1100 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1100 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1180] = 26
                mem[_1180 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1206 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1206 + idx + 68] = mem[_1180 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1206 + 68] = mem[_1206 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1206 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                    _1406 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1406] = 26
                    mem[_1406 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1436 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1436 + idx + 68] = mem[_1406 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1436 + 68] = mem[_1436 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1436 + -mem[64] + 100
                require (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1435 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1435] = 26
                mem[_1435 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) - (bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1465 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1465 + idx + 68] = mem[_1435 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1465 + 68] = mem[_1465 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1465 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (5 * bonusEndBlock) - (5 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 5:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (4 * bonusEndBlock) + block.number < 5 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number:
                _934 = mem[64]
                mem[64] = mem[64] + 64
                mem[_934] = 26
                mem[_934 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _962 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_962 + idx + 68] = mem[_934 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_962 + 68] = mem[_962 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _962 + -mem[64] + 100
                require totalAllocPoint
                _1025 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1025] = 26
                mem[_1025 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _1061 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1061 + idx + 68] = mem[_1025 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1061 + 68] = mem[_1061 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1061 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1155] = 26
                mem[_1155 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1177 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1177 + idx + 68] = mem[_1155 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1177 + 68] = mem[_1177 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1177 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1380 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1380] = 26
                    mem[_1380 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1403 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1403 + idx + 68] = mem[_1380 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1403 + 68] = mem[_1403 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1403 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1402 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1402] = 26
                mem[_1402 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1431 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1431 + idx + 68] = mem[_1402 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1431 + 68] = mem[_1431 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1431 + -mem[64] + 100
            require (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number
            if (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) / (4 * bonusEndBlock) - (5 * poolInfo[idx].field_512) + block.number != sub_d9f0abf5:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5):
                _961 = mem[64]
                mem[64] = mem[64] + 64
                mem[_961] = 26
                mem[_961 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_988 + idx + 68] = mem[_961 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_988 + 68] = mem[_988 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _988 + -mem[64] + 100
                require totalAllocPoint
                _1059 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1059] = 26
                mem[_1059 + 32] = 'SafeMath: division by zero'
                if devFundDivRate <= 0:
                    _1096 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1096 + idx + 68] = mem[_1059 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1096 + 68] = mem[_1096 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1096 + -mem[64] + 100
                require devFundDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devfundAddress, 0 / totalAllocPoint / devFundDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1176] = 26
                mem[_1176 + 32] = 'SafeMath: division by zero'
                if treasuryDivRate <= 0:
                    _1202 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1202 + idx + 68] = mem[_1176 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1202 + 68] = mem[_1202 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1202 + -mem[64] + 100
                require treasuryDivRate
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 0 / totalAllocPoint / treasuryDivRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_28f2642fAddress)
                call sub_28f2642fAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1401] = 26
                    mem[_1401 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1428 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1428 + idx + 68] = mem[_1401 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1428 + 68] = mem[_1428 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1428 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1427 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1427] = 26
                mem[_1427 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1459 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1459 + idx + 68] = mem[_1427 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1459 + 68] = mem[_1459 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1459 + -mem[64] + 100
            require (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5)
            if (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / (4 * bonusEndBlock * sub_d9f0abf5) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5) + (block.number * sub_d9f0abf5) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _987 = mem[64]
            mem[64] = mem[64] + 64
            mem[_987] = 26
            mem[_987 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1021 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1021 + idx + 68] = mem[_987 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1021 + 68] = mem[_1021 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1021 + -mem[64] + 100
            require totalAllocPoint
            _1094 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1094] = 26
            mem[_1094 + 32] = 'SafeMath: division by zero'
            if devFundDivRate <= 0:
                _1127 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1127 + idx + 68] = mem[_1094 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1127 + 68] = mem[_1127 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1127 + -mem[64] + 100
            require devFundDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devfundAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1201] = 26
            mem[_1201 + 32] = 'SafeMath: division by zero'
            if treasuryDivRate <= 0:
                _1239 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1239 + idx + 68] = mem[_1201 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1239 + 68] = mem[_1239 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1239 + -mem[64] + 100
            require treasuryDivRate
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args treasuryAddress, (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / treasuryDivRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint:
                _1426 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1426] = 26
                mem[_1426 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1456 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1456 + idx + 68] = mem[_1426 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1456 + 68] = mem[_1456 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1456 + -mem[64] + 100
            require (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1455 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1455] = 26
            mem[_1455 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (4 * bonusEndBlock * sub_d9f0abf5 * poolInfo[idx].field_256) - (5 * poolInfo[idx].field_512 * sub_d9f0abf5 * poolInfo[idx].field_256) + (block.number * sub_d9f0abf5 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1486 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1486 + idx + 68] = mem[_1455 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1486 + 68] = mem[_1486 + 74 len 26]
            revert with memory
              from mem[64]
               len _1486 + -mem[64] + 100
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
}



}
