contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 2


address owner;
address sub_c5d2b7adAddress;
address devaddr1;
uint256 bonusEndBlock;
uint256 sub_c68c0806;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function devaddr1() payable {
    return devaddr1
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_c5d2b7ad(?) payable {
    return sub_c5d2b7adAddress
}

function sub_c68c0806(?) payable {
    return sub_c68c0806
}

function _fallback() payable {
    revert
}

function dev1(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr1 != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr1 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function set(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    if block.number > startBlock:
        stor36B6[stor5.length] = block.number
    else:
        stor36B6[stor5.length] = startBlock
    stor36B6[stor5.length] = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - arg1:
            return 0
        if 2 * arg2 - arg1 / arg2 - arg1 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (2 * arg2 - arg1)
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
    if 2 * bonusEndBlock - arg1 / bonusEndBlock - arg1 != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg2 - bonusEndBlock + (2 * bonusEndBlock - arg1) < 2 * bonusEndBlock - arg1:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 - bonusEndBlock + (2 * bonusEndBlock - arg1))
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if block.number <= bonusEndBlock:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 0
                        else:
                            if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 100 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if 2 * block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 2:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not 2 * block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / 2 * block.number - poolInfo[idx].field_512 != sub_c68c0806:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint != 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * poolInfo[idx].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[idx].field_512 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_c68c0806) - (poolInfo[idx].field_512 * sub_c68c0806) / block.number - poolInfo[idx].field_512 != sub_c68c0806:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * sub_c68c0806) - (poolInfo[idx].field_512 * sub_c68c0806):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / (block.number * sub_c68c0806) - (poolInfo[idx].field_512 * sub_c68c0806) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint != 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if bonusEndBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not bonusEndBlock - poolInfo[idx].field_512:
                            if block.number - bonusEndBlock < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not block.number - bonusEndBlock:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) / block.number - bonusEndBlock != sub_c68c0806:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        call sub_c5d2b7adAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        call sub_c5d2b7adAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        call sub_c5d2b7adAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 100 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint != 100:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        call sub_c5d2b7adAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if 2 * bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 2:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512) < 2 * bonusEndBlock - poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[idx].field_512) != sub_c68c0806:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        call sub_c5d2b7adAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        call sub_c5d2b7adAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        call sub_c5d2b7adAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 100 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint != 100:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        call sub_c5d2b7adAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[idx].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[idx].field_256) + (2 * bonusEndBlock - poolInfo[idx].field_512 * sub_c68c0806 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
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
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr1, 0
                    else:
                        if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr1, 100 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c5d2b7adAddress)
                    call sub_c5d2b7adAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 2 * block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 0
                        else:
                            if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 100 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / 2 * block.number - poolInfo[arg1].field_512 != sub_c68c0806:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 0
                        else:
                            if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 100 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806) / block.number - poolInfo[arg1].field_512 != sub_c68c0806:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) / block.number - bonusEndBlock != sub_c68c0806:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) < 2 * bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) != sub_c68c0806:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingBabies(uint256 arg1, address arg2) payable {
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
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 2 * block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / 2 * block.number - poolInfo[arg1].field_512 != sub_c68c0806:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806) / block.number - poolInfo[arg1].field_512 != sub_c68c0806:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) / block.number - bonusEndBlock != sub_c68c0806:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) < 2 * bonusEndBlock - poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) != sub_c68c0806:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][msg.sender].field_0:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_c5d2b7adAddress)
                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c5d2b7adAddress)
                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_c5d2b7adAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    call sub_c5d2b7adAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_c5d2b7adAddress)
                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c5d2b7adAddress)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_c5d2b7adAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call sub_c5d2b7adAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
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
            if not userInfo[arg1][msg.sender].field_0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
            else:
                if userInfo[arg1][msg.sender].field_0:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c5d2b7adAddress)
                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c5d2b7adAddress)
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call sub_c5d2b7adAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    else:
                        call sub_c5d2b7adAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                else:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c5d2b7adAddress)
                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c5d2b7adAddress)
                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call sub_c5d2b7adAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[416 len 4] = 0
                    else:
                        call sub_c5d2b7adAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr1, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][msg.sender].field_0:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[416 len 4] = 0
                            else:
                                if userInfo[arg1][msg.sender].field_0:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][msg.sender].field_0:
                                if not userInfo[arg1][msg.sender].field_0:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[416 len 4] = 0
                    else:
                        if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr1, 100 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c5d2b7adAddress)
                        call sub_c5d2b7adAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][msg.sender].field_0:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                            else:
                                if not userInfo[arg1][msg.sender].field_0:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[416 len 4] = 0
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][msg.sender].field_0:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[416 len 4] = 0
                            else:
                                if userInfo[arg1][msg.sender].field_0:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if -userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                else:
                    if 2 * block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 2 * block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][msg.sender].field_0:
                                if not userInfo[arg1][msg.sender].field_0:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[416 len 4] = 0
                        else:
                            if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][msg.sender].field_0:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if userInfo[arg1][msg.sender].field_0:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][msg.sender].field_0:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[416 len 4] = 0
                    else:
                        if sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / 2 * block.number - poolInfo[arg1].field_512 != sub_c68c0806:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512:
                            if poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][msg.sender].field_0:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[416 len 4] = 0
                            else:
                                if 100 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint:
                                    if 10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * poolInfo[arg1].field_256 * sub_c68c0806 * 2 * block.number - poolInfo[arg1].field_512 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if userInfo[arg1][msg.sender].field_0:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                else:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                        else:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][msg.sender].field_0:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][msg.sender].field_0:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if userInfo[arg1][msg.sender].field_0:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                            else:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if not userInfo[arg1][msg.sender].field_0:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                        else:
                            if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][msg.sender].field_0:
                                if not userInfo[arg1][msg.sender].field_0:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[416 len 4] = 0
                    else:
                        if (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806) / block.number - poolInfo[arg1].field_512 != sub_c68c0806:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][msg.sender].field_0:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][msg.sender].field_0:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[416 len 4] = 0
                        else:
                            if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (poolInfo[arg1].field_512 * sub_c68c0806) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][msg.sender].field_0:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                            else:
                                if 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][msg.sender].field_0:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
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
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c5d2b7adAddress)
                            call sub_c5d2b7adAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if userInfo[arg1][msg.sender].field_0:
                                if not userInfo[arg1][msg.sender].field_0:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    else:
                                        call sub_c5d2b7adAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[416 len 4] = 0
                        else:
                            if (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) / block.number - bonusEndBlock != sub_c68c0806:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if userInfo[arg1][msg.sender].field_0:
                                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if userInfo[arg1][msg.sender].field_256 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if -userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                        if userInfo[arg1][msg.sender].field_0:
                                            if not userInfo[arg1][msg.sender].field_0:
                                                if userInfo[arg1][msg.sender].field_256 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                            else:
                                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                else:
                                    if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][msg.sender].field_0:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                            else:
                                if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                                if userInfo[arg1][msg.sender].field_0:
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_c5d2b7adAddress)
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        else:
                                            call sub_c5d2b7adAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[416 len 4] = 0
                    else:
                        if 2 * bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) < 2 * bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if userInfo[arg1][msg.sender].field_0:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                else:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                            else:
                                if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c5d2b7adAddress)
                                call sub_c5d2b7adAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][msg.sender].field_0:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if not userInfo[arg1][msg.sender].field_0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                                    else:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                        else:
                            if (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806) / block.number - bonusEndBlock + (2 * bonusEndBlock - poolInfo[arg1].field_512) != sub_c68c0806:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if userInfo[arg1][msg.sender].field_0:
                                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if userInfo[arg1][msg.sender].field_256 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                        if userInfo[arg1][msg.sender].field_0:
                                            if not userInfo[arg1][msg.sender].field_0:
                                                if userInfo[arg1][msg.sender].field_256 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                            else:
                                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                else:
                                    if 100 * 0 / totalAllocPoint / 0 / totalAllocPoint != 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                        if userInfo[arg1][msg.sender].field_0:
                                            if not userInfo[arg1][msg.sender].field_0:
                                                if userInfo[arg1][msg.sender].field_256 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                            else:
                                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if not userInfo[arg1][msg.sender].field_0:
                                                if userInfo[arg1][msg.sender].field_256 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                            else:
                                if (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / (block.number * sub_c68c0806) - (bonusEndBlock * sub_c68c0806) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                                    if userInfo[arg1][msg.sender].field_0:
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if userInfo[arg1][msg.sender].field_256 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        else:
                                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_c5d2b7adAddress)
                                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            else:
                                                call sub_c5d2b7adAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr1, 100 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c5d2b7adAddress)
                                    call sub_c5d2b7adAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if not userInfo[arg1][msg.sender].field_0:
                                                if userInfo[arg1][msg.sender].field_256 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                    else:
                                        if 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c68c0806 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_c68c0806 * poolInfo[arg1].field_256) + (2 * bonusEndBlock - poolInfo[arg1].field_512 * sub_c68c0806 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                        if not userInfo[arg1][msg.sender].field_0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if not userInfo[arg1][msg.sender].field_0:
                                                if userInfo[arg1][msg.sender].field_256 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(poolInfo[arg1].field_0):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                staticcall sub_c5d2b7adAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_c5d2b7adAddress)
                                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    call sub_c5d2b7adAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(poolInfo[arg1].field_0):
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
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg1][msg.sender].field_0 += arg2
        if not arg2 + userInfo[arg1][msg.sender].field_0:
            userInfo[arg1][msg.sender].field_256 = 0
        else:
            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg1][msg.sender].field_0 += arg2
        if not arg2 + userInfo[arg1][msg.sender].field_0:
            userInfo[arg1][msg.sender].field_256 = 0
        else:
            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
